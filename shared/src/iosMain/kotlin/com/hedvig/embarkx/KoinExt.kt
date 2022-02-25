package com.hedvig.embarkx

import kotlinx.cinterop.ObjCClass
import kotlinx.cinterop.getOriginalKotlinClass
import org.koin.core.Koin
import kotlin.reflect.KClass

@Suppress("unused") // Used from Swift
fun <T> Koin.getForNative(objCClass: ObjCClass): T? {
    return getOriginalKotlinClass(objCClass)?.let { kClass: KClass<*> ->
        getDependency(kClass)
    }
}
