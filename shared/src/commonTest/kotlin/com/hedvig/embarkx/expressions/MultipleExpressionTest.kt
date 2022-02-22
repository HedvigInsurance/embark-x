package com.hedvig.embarkx.expressions

import com.hedvig.embarkx.store.EmbarkStore
import io.kotest.matchers.shouldBe
import kotlin.test.Test

class MultipleExpressionTest {
    @Test
    fun shouldReturnTrueForAndExpressionWhenBothSubExpressionsAreTrue() {
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
    fun shouldReturnFalseForAndExpressionWhenOneOfTheSubExpressionsAreFalse() {
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
    fun shouldReturnFalseForAndExpressionWhenAllOfTheSubExpressionsAreFalse() {
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

    @Test
    fun shouldReturnTrueForOrExpressionWhenOneOfTheSubExpressionsAreTrue() {
        evaluateExpression(
            Expression.Multiple.Or(
                subExpressions = listOf(
                    Expression.Unary.Always,
                    Expression.Unary.Never,
                )
            ),
            EmbarkStore(),
        ) shouldBe true
    }

    @Test
    fun shouldReturnFalseForOrExpressionWhenAllOfTheSubExpressionsAreFalse() {
        evaluateExpression(
            Expression.Multiple.Or(
                subExpressions = listOf(
                    Expression.Unary.Never,
                    Expression.Unary.Never,
                )
            ),
            EmbarkStore(),
        ) shouldBe false
    }
}
