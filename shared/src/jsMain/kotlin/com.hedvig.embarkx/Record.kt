package com.hedvig.embarkx

import kotlinx.js.jso

external interface Record<in K : Any, V : Any>

inline operator fun <K : Any, V : Any> Record<K, V>.get(key: K): V? =
    asDynamic()[key] as? V

inline operator fun <K : Any, V : Any> Record<K, V>.set(key: K, value: V) {
    asDynamic()[key] = value
}

/**
 * Convenience method to construct a [Record] instance with a builder [block].
 */
@Suppress("FunctionName")
fun <K : Any, V : Any> Record(
    block: Record<K, V>.() -> Unit,
): Record<K, V> = jso(block)
