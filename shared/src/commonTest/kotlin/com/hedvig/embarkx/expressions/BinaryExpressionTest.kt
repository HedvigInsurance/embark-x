package com.hedvig.embarkx.expressions

import com.hedvig.embarkx.store.EmbarkStore
import io.kotest.matchers.shouldBe
import kotlin.test.Test

class BinaryExpressionTest {
    @Test
    fun `should return true for equals-expression when values are equal`() {
        val store = EmbarkStore()
        store.put("foo", "bar")
        store.commit()

        evaluateExpression(Expression.Binary.Equals("foo", "bar"), store) shouldBe true
    }

    @Test
    fun `should return false for equals-expression when values are not equal`() {
        val store = EmbarkStore()
        store.put("foo", "baz")
        store.commit()

        evaluateExpression(Expression.Binary.Equals("foo", "bar"), store) shouldBe false
    }

    @Test
    fun `should return true for not equals-expression when values are not equal`() {
        val store = EmbarkStore()
        store.put("foo", "baz")
        store.commit()

        evaluateExpression(Expression.Binary.NotEquals("foo", "bar"), store) shouldBe true
    }

    @Test
    fun `should return false for not equals-expression when values are equal`() {
        val store = EmbarkStore()
        store.put("foo", "bar")
        store.commit()

        evaluateExpression(Expression.Binary.NotEquals("foo", "bar"), store) shouldBe false
    }

    @Test
    fun `should return true for greater than-expression when value is greater`() {
        val store = EmbarkStore()
        store.put("foo", "5")
        store.commit()

        evaluateExpression(Expression.Binary.GreaterThan("foo", "4"), store) shouldBe true
    }

    @Test
    fun `should return false for greater than-expression when value is smaller`() {
        val store = EmbarkStore()
        store.put("foo", "5")
        store.commit()

        evaluateExpression(Expression.Binary.GreaterThan("foo", "6"), store) shouldBe false
    }

    @Test
    fun `should return true for greater than or equals-expression when value is greater`() {
        val store = EmbarkStore()
        store.put("foo", "5")
        store.commit()

        evaluateExpression(Expression.Binary.GreaterThanOrEquals("foo", "4"), store) shouldBe true
    }

    @Test
    fun `should return true for greater than or equals-expression when value is equal`() {
        val store = EmbarkStore()
        store.put("foo", "5")
        store.commit()

        evaluateExpression(Expression.Binary.GreaterThanOrEquals("foo", "5"), store) shouldBe true
    }

    @Test
    fun `should return false for greater than or equals-expression when value is lesser`() {
        val store = EmbarkStore()
        store.put("foo", "5")
        store.commit()

        evaluateExpression(Expression.Binary.GreaterThanOrEquals("foo", "6"), store) shouldBe false
    }
}
