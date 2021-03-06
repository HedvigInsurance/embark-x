package com.hedvig.embarkx.expressions

import com.hedvig.embarkx.store.EmbarkStore
import io.kotest.matchers.shouldBe
import kotlin.test.Test

class BinaryExpressionTest {
    @Test
    fun shouldReturnTrueForEqualsExpressionWhenValuesAreEqual() {
        val store = EmbarkStore()
        store.put("foo", "bar")
        store.commit()

        evaluateExpression(Equals("foo", "bar"), store) shouldBe true
    }

    @Test
    fun shouldReturnFalseForEqualsExpressionWhenValuesAreNotEqual() {
        val store = EmbarkStore()
        store.put("foo", "baz")
        store.commit()

        evaluateExpression(Equals("foo", "bar"), store) shouldBe false
    }

    @Test
    fun shouldReturnTrueForNotEqualsExpressionWhenValuesAreNotEqual() {
        val store = EmbarkStore()
        store.put("foo", "baz")
        store.commit()

        evaluateExpression(NotEquals("foo", "bar"), store) shouldBe true
    }

    @Test
    fun shouldReturnFalseForNotEqualsExpressionWhenValuesAreEqual() {
        val store = EmbarkStore()
        store.put("foo", "bar")
        store.commit()

        evaluateExpression(NotEquals("foo", "bar"), store) shouldBe false
    }

    @Test
    fun shouldReturnTrueForGreaterThanExpressionWhenValueIsGreater() {
        val store = EmbarkStore()
        store.put("foo", "5")
        store.commit()

        evaluateExpression(GreaterThan("foo", "4"), store) shouldBe true
    }

    @Test
    fun shouldReturnFalseForGreaterThanExpressionWhenValueIsSmaller() {
        val store = EmbarkStore()
        store.put("foo", "5")
        store.commit()

        evaluateExpression(GreaterThan("foo", "6"), store) shouldBe false
    }

    @Test
    fun shouldReturnTrueForGreaterThanOrEqualsExpressionWhenValueIsGreater() {
        val store = EmbarkStore()
        store.put("foo", "5")
        store.commit()

        evaluateExpression(GreaterThanOrEquals("foo", "4"), store) shouldBe true
    }

    @Test
    fun shouldReturnTrueForGreaterThanOrEqualsExpressionWhenValueIsEqual() {
        val store = EmbarkStore()
        store.put("foo", "5")
        store.commit()

        evaluateExpression(GreaterThanOrEquals("foo", "5"), store) shouldBe true
    }

    @Test
    fun shouldReturnFalseForGreaterThanOrEqualsExpressionWhenValueIsLesser() {
        val store = EmbarkStore()
        store.put("foo", "5")
        store.commit()

        evaluateExpression(GreaterThanOrEquals("foo", "6"), store) shouldBe false
    }

    @Test
    fun shouldReturnTrueForLessThanExpressionWhenValueIsLesser() {
        val store = EmbarkStore()
        store.put("foo", "5")
        store.commit()

        evaluateExpression(LessThan("foo", "6"), store) shouldBe true
    }

    @Test
    fun shouldReturnFalseForLessThanExpressionWhenValueIsGreater() {
        val store = EmbarkStore()
        store.put("foo", "5")
        store.commit()

        evaluateExpression(LessThan("foo", "4"), store) shouldBe false
    }

    @Test
    fun shouldReturnTrueForLessThanOrEqualsExpressionWhenValueIsLesser() {
        val store = EmbarkStore()
        store.put("foo", "5")
        store.commit()

        evaluateExpression(LessThanOrEquals("foo", "6"), store) shouldBe true
    }

    @Test
    fun shouldReturnTrueForLessThanOrEqualsExpressionWhenValueIsEqual() {
        val store = EmbarkStore()
        store.put("foo", "5")
        store.commit()

        evaluateExpression(LessThanOrEquals("foo", "5"), store) shouldBe true
    }

    @Test
    fun shouldReturnFalseForLessThanOrEqualsExpressionWhenValueIsGreater() {
        val store = EmbarkStore()
        store.put("foo", "5")
        store.commit()

        evaluateExpression(LessThanOrEquals("foo", "4"), store) shouldBe false
    }

    @Test
    fun shouldReturnFalseWhenValueFromStoreIsNotANumber() {
        val store = EmbarkStore()
        store.put("foo", "bar")
        store.commit()

        evaluateExpression(GreaterThan("foo", "4"), store) shouldBe false
    }

    @Test
    fun shouldReturnFalseWhenValueIsNotANumber() {
        val store = EmbarkStore()
        store.put("foo", "5")
        store.commit()

        evaluateExpression(GreaterThan("foo", "bar"), store) shouldBe false
    }
}
