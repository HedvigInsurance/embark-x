package com.hedvig.embarkx

import com.hedvig.embarkx.apollo.apolloModule
import com.hedvig.embarkx.embark.story.embarkStoryModule
import kotlin.reflect.KClass
import org.koin.core.Koin
import org.koin.core.KoinApplication
import org.koin.core.context.startKoin
import org.koin.core.parameter.parametersOf

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

internal fun <T> Koin.getDependency(clazz: KClass<*>): T {
    return get(clazz, parameters = { parametersOf(clazz.simpleName) }) as T
}
