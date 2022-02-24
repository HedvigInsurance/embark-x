package com.hedvig.embarkx.store

import com.hedvig.embarkx.computedvalues.evaluate
import com.hedvig.embarkx.util.Stack
import kotlin.js.JsExport

@JsExport
class EmbarkStore {
    private val versions = Stack<Map<String, Any?>>().apply { push(emptyMap()) }
    private val stage = mutableMapOf<String, Any?>()
    private val prefill = mutableMapOf<String, Any?>()

    var computedValues: Map<String, String> = emptyMap()

    fun get(key: String): String? {
        return computedValues[key]?.let { computedValue ->
            evaluate(computedValue, this)
        }
            ?: (versions.peek()[key] as? String?)
            ?: (stage[key] as? String?)
    }

    fun getArray(key: String): Array<*>? {
        return (versions.peek()[key] as? Array<*>?) ?: (stage[key] as? Array<*>?)
    }

    fun put(key: String, value: String?) {
        stage[key] = value
        prefill[key] = value
    }

    fun putArray(key: String, listValue: Array<*>) {
        stage[key] = listValue
        prefill[key] = listValue
    }

    fun commit() {
        versions.push(versions.peek() + stage)
        stage.clear()
    }

    fun rollback() {
        versions.pop()
    }

    fun getPrefill(key: String): String? {
        return prefill[key] as? String?
    }
}
