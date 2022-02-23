package com.hedvig.embarkx.embark.story

import arrow.core.Either
import com.apollographql.apollo3.ApolloClient
import com.hedvig.embarkx.apollo.ApolloError
import com.hedvig.embarkx.apollo.toEither
import com.hedvig.giraffe.EmbarkStoryQuery
import com.hedvig.giraffe.type.Locale

class GetEmbarkStoryUseCase(
    private val apolloClient: ApolloClient,
) {
    suspend operator fun invoke(
        embarkStory: EmbarkStory,
        locale: Locale = Locale.en_SE,
    ): Either<ApolloError, EmbarkStoryQuery.Data> {
        return apolloClient.query(EmbarkStoryQuery(storyName = embarkStory.name, locale = locale.rawValue))
            .execute()
            .toEither()
    }
}
