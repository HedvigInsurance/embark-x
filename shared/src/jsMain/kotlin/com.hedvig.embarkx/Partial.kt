package com.hedvig.embarkx

external interface Partial<T : Any>

inline fun <T : Any> T.toPartial(): Partial<T> {
    return this.unsafeCast<Partial<T>>()
}
