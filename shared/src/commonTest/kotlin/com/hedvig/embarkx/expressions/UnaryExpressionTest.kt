package com.hedvig.embarkx.expressions

import io.kotest.matchers.shouldBe
import kotlin.test.Test

class UnaryExpressionTest {
    @Test
    fun `should return true for 'Always'-expression`() {
        evaluateExpression(Expression.Unary.Always) shouldBe true
    }

    @Test
    fun `should return false for 'Never'-expression`() {
        evaluateExpression(Expression.Unary.Never) shouldBe false
    }
}
