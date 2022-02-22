package com.hedvig.embarkx.store

import io.kotest.matchers.shouldBe
import kotlin.js.JsName
import kotlin.test.Test

class EmbarkStoreTest {
    @Test
    @JsName("should_be_able_to_put_a_key_then_get_it")
    fun `should be able to put a key then get it`() {
        val store = EmbarkStore()

        store.put("foo", "bar")
        store.get("foo") shouldBe "bar"
    }

    @Test
    @JsName("should_return_null_when_getting_a_key_that_does_not_exist")
    fun `should return null when getting a key that does not exist`() {
        val store = EmbarkStore()
        store.get("foo") shouldBe null
    }

    @Test
    @JsName("should_remove_values_when_rolling_back")
    fun `should remove values when rolling back`() {
        val store = EmbarkStore()

        store.put("foo", "bar")
        store.commit()
        store.rollback()

        store.get("foo") shouldBe null
    }

    @Test
    @JsName("should_be_able_to_get_value_from_prefill_even_if_value_has_been_rolled_back")
    fun `should be able to get value from prefill even if value has been rolled back`() {
        val store = EmbarkStore()

        store.put("foo", "bar")
        store.commit()
        store.rollback()

        store.getPrefill("foo") shouldBe "bar"
    }
}
