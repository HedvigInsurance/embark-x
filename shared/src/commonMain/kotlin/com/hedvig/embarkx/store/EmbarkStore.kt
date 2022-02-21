package com.hedvig.embarkx.store

class EmbarkStore {
    private val inner = mutableMapOf<String, String?>()
    fun get(key: String): String? {
        return inner[key]
    }

    fun set(key: String, value: String?) {
        inner[key] = value
    }
}
