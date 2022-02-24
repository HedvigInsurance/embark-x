package com.hedvig.embarkx.embark.story

import arrow.core.Either
import com.apollographql.apollo3.ApolloClient
import com.apollographql.apollo3.annotations.ApolloExperimental
import com.apollographql.apollo3.testing.enqueueTestNetworkError
import com.apollographql.apollo3.testing.enqueueTestResponse
import com.hedvig.embarkx.apollo.apolloModule
import com.hedvig.embarkx.initializeDi
import com.hedvig.embarkx.testutils.apolloModuleTest
import com.hedvig.giraffe.EmbarkStoryQuery
import com.hedvig.giraffe.test.EmbarkStoryQuery_TestBuilder.Data
import com.hedvig.giraffe.type.Locale
import io.kotest.matchers.should
import io.kotest.matchers.shouldBe
import io.kotest.matchers.shouldNot
import io.kotest.matchers.types.beOfType
import kotlin.test.AfterTest
import kotlin.test.BeforeTest
import kotlin.test.Test
import kotlinx.coroutines.ExperimentalCoroutinesApi
import kotlinx.coroutines.test.runTest
import org.koin.core.context.stopKoin
import org.koin.test.KoinTest
import org.koin.test.inject

@OptIn(ApolloExperimental::class, ExperimentalCoroutinesApi::class)
class GetEmbarkStoryUseCaseTest : KoinTest {

    private val apolloClient: ApolloClient by inject()
    private val getEmbarkStoryUseCase: GetEmbarkStoryUseCase by inject()

    @BeforeTest // todo look into making this a @rule somehow to avoid boilerplate? Maybe that's possible
    fun setUp() {
        initializeDi {
            unloadModules(apolloModule)
            modules(apolloModuleTest)
        }
    }

    @AfterTest
    fun teardown() {
        stopKoin()
    }

    @Test
    fun apolloErrorReturnsWhenResponseFails() = runTest {
        apolloClient.enqueueTestNetworkError()

        val result = getEmbarkStoryUseCase.invoke(EmbarkStoryName("storyName"), Locale.en_SE)
        result should beOfType<Either.Left<*>>()
        val error = (result as Either.Left).value
        error should beOfType<GetEmbarkStoryUseCase.Error.Apollo>()
        error shouldNot beOfType<GetEmbarkStoryUseCase.Error.NoStoryFound>()
    }

    @Test
    fun noDataErrorReturnsWhenThereIsNoData() = runTest {
        val storyName = "storyName"
        val locale = Locale.en_SE
        val testQuery = EmbarkStoryQuery(storyName = storyName, locale = locale.rawValue)
        apolloClient.enqueueTestResponse(
            operation = testQuery,
            data = EmbarkStoryQuery.Data {
                embarkStory = null
            },
            errors = null
        )

        val result = getEmbarkStoryUseCase.invoke(EmbarkStoryName(storyName), locale)
        result should beOfType<Either.Left<*>>()
        val error = (result as Either.Left).value
        error should beOfType<GetEmbarkStoryUseCase.Error.NoStoryFound>()
        error shouldNot beOfType<GetEmbarkStoryUseCase.Error.Apollo>()
    }

    @Test
    fun successfulRequestReturnsTheContainingData()  = runTest  {
        val storyName = "storyName"
        val locale = Locale.en_SE
        val firstPassage = "firstPassage"
        val testQuery = EmbarkStoryQuery(storyName = storyName, locale = locale.rawValue)
        val responseObject = EmbarkStoryQuery.Data() {
            embarkStory = embarkStory {
                startPassage = firstPassage
                computedStoreValues = listOf(
                    computedStoreValue {
                        key = "key"
                        `value` = "value"
                    }
                )
                passages = listOf(
                    passage {
                        name = firstPassage
                        externalRedirect = externalRedirect {
                            data = data {
                                location = "asdf"
                            }
                        }
                    }
                )
            }
        }
        apolloClient.enqueueTestResponse(
            operation = testQuery,
            data = responseObject,
            errors = null
        )
        val result = getEmbarkStoryUseCase.invoke(EmbarkStoryName(storyName), locale)
        result should beOfType<Either.Right<*>>()
        val embarkStory = (result as Either.Right).value
        embarkStory.startPassage shouldBe firstPassage
        embarkStory.computedStoreValues shouldBe listOf(EmbarkStoryQuery.ComputedStoreValue("key", "value"))
    }
}
