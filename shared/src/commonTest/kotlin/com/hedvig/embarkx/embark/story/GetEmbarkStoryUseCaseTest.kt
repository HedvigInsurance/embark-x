package com.hedvig.embarkx.embark.story

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
import io.kotest.matchers.shouldNotBe
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
    val getEmbarkStoryUseCase: GetEmbarkStoryUseCase by inject()

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
        val storyName = "storyName"
        val locale = Locale.en_SE
        val testQuery = EmbarkStoryQuery(storyName = storyName, locale = locale.rawValue)
        apolloClient.enqueueTestNetworkError()

        val actual = getEmbarkStoryUseCase.invoke(EmbarkStoryName(storyName), locale)
        actual shouldNotBe null
    }

    @Test
    fun apolloErrorReturnsWhenThereIsNoData() = runTest {
        val storyName = "storyName"
        val locale = Locale.en_SE
        val testQuery = EmbarkStoryQuery(storyName = storyName, locale = locale.rawValue)
        apolloClient.enqueueTestResponse(operation = testQuery, data = TODO())

        val actual = getEmbarkStoryUseCase.invoke(EmbarkStoryName(storyName), locale)
        actual shouldNotBe null
    }
}
