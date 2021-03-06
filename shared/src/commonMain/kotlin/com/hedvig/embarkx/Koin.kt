package com.hedvig.embarkx

import com.hedvig.embarkx.apollo.apolloModule
import com.hedvig.embarkx.embark.story.embarkStoryModule
import org.koin.core.KoinApplication
import org.koin.core.context.startKoin

fun initializeDi(
    extraConfiguration: KoinApplication.() -> Unit = {},
): KoinApplication {
    return startKoin {
        modules(
            apolloModule,
            embarkStoryModule,
        )
        extraConfiguration()
    }
}

@Suppress("unused")
fun initializeDi(): KoinApplication {
    return initializeDi {}
}
