package com.hedvig.embarkx.expressions

import com.hedvig.embarkx.store.EmbarkStore
import io.kotest.matchers.shouldBe
import kotlin.test.Test

class MultipleExpressionTest {
    @Test
    fun `should return true for and-expression when both sub-expressions are true`() {
        evaluateExpression(
            Expression.Multiple.And(
                subExpressions = listOf(
                    Expression.Unary.Always,
                    Expression.Unary.Always,
                )
            ),
            EmbarkStore(),
        ) shouldBe true
    }

    @Test
    fun `should return false for and-expression when one of the sub-expressions are false`() {
        evaluateExpression(
            Expression.Multiple.And(
                subExpressions = listOf(
                    Expression.Unary.Always,
                    Expression.Unary.Never,
                )
            ),
            EmbarkStore(),
        ) shouldBe false
    }

    @Test
    fun `should return false for and-expression when all of the sub-expressions are false`() {
        evaluateExpression(
            Expression.Multiple.And(
                subExpressions = listOf(
                    Expression.Unary.Never,
                    Expression.Unary.Never,
                )
            ),
            EmbarkStore(),
        ) shouldBe false
    }
}
