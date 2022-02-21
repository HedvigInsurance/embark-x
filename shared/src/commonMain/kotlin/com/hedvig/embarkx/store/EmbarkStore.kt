package com.hedvig.embarkx.store

import com.hedvig.embarkx.util.Stack

class EmbarkStore {
    private val versions = Stack<Map<String, String?>>().apply { push(emptyMap()) }
    private val stage = mutableMapOf<String, String?>()
    private val prefill = mutableMapOf<String, String?>()

    fun get(key: String): String? {
        return versions.peek()[key] ?: stage[key]
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
