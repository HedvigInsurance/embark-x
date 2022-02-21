package com.hedvig.embarkx.store

import io.kotest.matchers.shouldBe
import kotlin.test.Test

class EmbarkStoreTest {
    @Test
    fun `should be able to put a key then get it`() {
        val store = EmbarkStore()

        store.put("foo", "bar")
        store.get("foo") shouldBe "bar"
    }

    @Test
    fun `should return null when getting a key that does not exist`() {
        val store = EmbarkStore()
        store.get("foo") shouldBe null
    }

    @Test
    fun `should remove values when rolling back`() {
        val store = EmbarkStore()

        store.put("foo", "bar")
        store.commit()
        store.rollback()

        store.get("foo") shouldBe null
    }
}
