@file:Suppress("RemoveExplicitTypeArguments")

package com.hedvig.embarkx.apollo

import com.apollographql.apollo3.ApolloClient
import org.koin.core.module.Module
import org.koin.dsl.module

val apolloModule: Module = module {
    single<ApolloClient> { buildApolloClient() }
}

private fun buildApolloClient(): ApolloClient {
    return ApolloClient.Builder()
        .serverUrl("https://graphql.dev.hedvigit.com/graphql")
        .build()
}
