package com.hedvig.embarkx.store

import io.kotest.matchers.shouldBe
import kotlin.test.Test

class EmbarkStoreTest {
    @Test
    fun shouldBeAbleToPutAKeyThenGetIt() {
        val store = EmbarkStore()

        store.put("foo", "bar")
        store.get("foo") shouldBe "bar"
    }

    @Test
    fun shouldReturnNullWhenGettingAKeyThatDoesNotExist() {
        val store = EmbarkStore()
        store.get("foo") shouldBe null
    }

    @Test
    fun shouldRemoveValuesWhenRollingBack() {
        val store = EmbarkStore()

        store.put("foo", "bar")
        store.commit()
        store.rollback()

        store.get("foo") shouldBe null
    }

    @Test
    fun shouldBeAbleToGetValueFromPrefillEvenIfValueHasBeenRolledBack() {
        val store = EmbarkStore()

        store.put("foo", "bar")
        store.commit()
        store.rollback()

        store.getPrefill("foo") shouldBe "bar"
    }

    @Test
    fun shouldEvaluateComputedValue() {
        val store = EmbarkStore()
        store.computedValues = mapOf(
            "foo" to "'bar'"
        )

        store.get("foo") shouldBe "bar"
    }
}
