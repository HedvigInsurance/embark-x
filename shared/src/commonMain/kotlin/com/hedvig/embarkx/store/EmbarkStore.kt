package com.hedvig.embarkx.store

import com.hedvig.embarkx.computedvalues.evaluate
import com.hedvig.embarkx.util.Stack
import kotlin.js.JsExport

@JsExport
class EmbarkStore {
    private val versions = Stack<Map<String, String?>>().apply { push(emptyMap()) }
    internal val stage = mutableMapOf<String, String?>()
    private val prefill = mutableMapOf<String, String?>()

    var computedValues: Map<String, String> = emptyMap()

    fun get(key: String): String? {
        return computedValues[key]?.let { computedValue ->
            evaluate(computedValue, this)
        }
            ?: versions.peek()[key]
            ?: stage[key]
    }

    fun put(key: String, value: String?) {
        stage[key] = value
        prefill[key] = value
    }

    fun commit() {
        versions.push(versions.peek() + stage)
        stage.clear()
    }

    fun rollback() {
        versions.pop()
    }

    fun getPrefill(key: String): String? {
        return prefill[key]
    }
}
