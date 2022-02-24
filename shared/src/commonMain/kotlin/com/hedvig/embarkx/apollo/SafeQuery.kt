package com.hedvig.embarkx.apollo

import arrow.core.Either
import arrow.core.left
import arrow.core.nonFatalOrThrow
import arrow.core.right
import com.apollographql.apollo3.ApolloCall
import com.apollographql.apollo3.api.ApolloResponse
import com.apollographql.apollo3.api.Error
import com.apollographql.apollo3.api.Operation
import com.apollographql.apollo3.exception.ApolloException

sealed interface ApolloError {
    data class GeneralException(val exceptionMessage: String?) : ApolloError
    data class ApolloException(val exceptionMessage: String?) : ApolloError
    data class GraphQL(val exceptionErrors: List<Error>?) : ApolloError
    object NoData : ApolloError
}

suspend fun <D : Operation.Data> ApolloCall<D>.executeSafely(): Either<ApolloError, D> {
    return try {
        execute().toEither()
    } catch (apolloException: ApolloException) {
        ApolloError.ApolloException(apolloException.message).left()
    } catch (throwable: Throwable) {
        ApolloError.GeneralException(throwable.nonFatalOrThrow().message).left()
    }
}

private fun <T : Operation.Data> ApolloResponse<T>.toEither(): Either<ApolloError, T> {
    if (hasErrors()) return ApolloError.GraphQL(errors).left()
    val data = data ?: return ApolloError.NoData.left()
    return data.right()
}
