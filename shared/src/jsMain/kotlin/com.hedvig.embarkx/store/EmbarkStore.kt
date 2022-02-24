package com.hedvig.embarkx.store

import com.hedvig.embarkx.JsMapLikeObject
import com.hedvig.embarkx.toJs

@JsExport
fun EmbarkStore.getStagingValues(): JsMapLikeObject<String, String> {
    return stage.filterNotNullValues().toJs()
}

@Suppress("UNCHECKED_CAST")
private fun <K, V> Map<K, V?>.filterNotNullValues(): Map<K, V> =
    filterValues { it != null } as Map<K, V>
