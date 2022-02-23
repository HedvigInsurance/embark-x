package com.hedvig.embarkx.embark.story

import arrow.core.Either
import arrow.core.leftIfNull
import com.apollographql.apollo3.ApolloClient
import com.hedvig.embarkx.apollo.ApolloError
import com.hedvig.embarkx.apollo.toEither
import com.hedvig.giraffe.EmbarkStoryQuery
import com.hedvig.giraffe.type.Locale

class GetEmbarkStoryUseCase(
    private val apolloClient: ApolloClient,
) {
    suspend operator fun invoke(
        embarkStoryName: EmbarkStoryName,
        locale: Locale = Locale.en_SE,
    ): Either<Error, EmbarkStory> {
        return apolloClient
            .query(EmbarkStoryQuery(storyName = embarkStoryName.name, locale = locale.rawValue))
            .execute()
            .toEither()
            .mapLeft { Error.NetworkError(it) }
            .map(EmbarkStoryQuery.Data::embarkStory)
            .leftIfNull { Error.NoStoryFound }
            .map(EmbarkStory::fromDto)
    }

    sealed interface Error {
        object NoStoryFound : Error
        data class NetworkError(val apolloError: ApolloError) : Error
    }
}

data class EmbarkStory(
    val passages: List<EmbarkStoryQuery.Data.EmbarkStory.Passage>,
    val startPassage: String,
    val computedStoreValues: List<EmbarkStoryQuery.Data.EmbarkStory.ComputedStoreValue>?,
) {
    companion object {
        fun fromDto(dto: EmbarkStoryQuery.Data.EmbarkStory): EmbarkStory {
            return EmbarkStory(
                dto.passages,
                dto.startPassage,
                dto.computedStoreValues,
            )
        }
    }
}
