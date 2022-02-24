package com.hedvig.embarkx

typealias JsMapLikeObject<K, V> = Partial<Record<K, V>>

inline operator fun <K : Any, V : Any> JsMapLikeObject<K, V>.get(key: K): V? =
    asDynamic()[key] as? V

inline operator fun <K : Any, V : Any> JsMapLikeObject<K, V>.set(key: K, value: V) {
    asDynamic()[key] = value
}

/**
 * Convenience method to construct a map-like construct with the specified contents, given as a list of pairs
 * where the first value is the key and the second is the value.
 *
 * If multiple pairs have the same key, the resulting map will contain the value from the last of those pairs.
 *
 * Entries of the map are iterated in the order they were specified.
 */
fun <K : Any, V : Any> jsMapOf(
    vararg pairs: Pair<K, V>,
): JsMapLikeObject<K, V> = Record<K, V> {
    pairs.forEach { (key, value) ->
        this[key] = value
    }
}.toPartial()

/**
 * Convert [this] from a [Map] to a [Record], applying [transform] to each [Map.Entry] along the way
 */
inline fun <K1, V1, K2 : Any, V2 : Any> Map<K1, V1>.mapToJs(
    crossinline transform: (Map.Entry<K1, V1>) -> Pair<K2, V2>,
): JsMapLikeObject<K2, V2> {
    return Record<K2, V2> {
        this@mapToJs.entries.forEach { entry ->
            val (key, value) = transform(entry)
            this[key] = value
        }
    }.toPartial()
}

/**
 * Convert [this] from a [Map] to a [JsMapLikeObject] without applying any transformations
 */
fun <K : Any, V : Any> Map<K, V>.toJs(): JsMapLikeObject<K, V> {
    return Record<K, V> {
        this@toJs.entries.forEach { (key, value) ->
            this[key] = value
        }
    }.toPartial()
}
