@file:Suppress("RemoveExplicitTypeArguments")

package com.hedvig.embarkx.embark.story

import org.koin.core.module.Module
import org.koin.dsl.module

val embarkStoryModule: Module = module {
    single<GetEmbarkStoryUseCase> { GetEmbarkStoryUseCase(get()) }
}
