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
}
