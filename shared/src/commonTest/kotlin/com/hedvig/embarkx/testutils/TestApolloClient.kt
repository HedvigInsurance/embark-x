@file:Suppress("RemoveExplicitTypeArguments")

package com.hedvig.embarkx.testutils

import com.apollographql.apollo3.ApolloClient
import com.apollographql.apollo3.annotations.ApolloExperimental
import com.apollographql.apollo3.testing.QueueTestNetworkTransport
import org.koin.core.module.Module
import org.koin.dsl.module

@OptIn(ApolloExperimental::class)
internal val apolloModuleTest: Module = module {
    single<ApolloClient> {
        ApolloClient.Builder()
            .networkTransport(QueueTestNetworkTransport())
            .build()
    }
}
