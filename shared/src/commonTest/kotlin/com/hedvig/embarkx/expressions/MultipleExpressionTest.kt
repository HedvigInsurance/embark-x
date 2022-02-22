package com.hedvig.embarkx.expressions

import com.hedvig.embarkx.store.EmbarkStore
import io.kotest.matchers.shouldBe
import kotlin.test.Test

class MultipleExpressionTest {
    @Test
    fun shouldReturnTrueForAndExpressionWhenBothSubExpressionsAreTrue() {
        evaluateExpression(
            And(
                subExpressions = listOf(
                    Always,
                    Always,
                )
            ),
            EmbarkStore(),
        ) shouldBe true
    }

    @Test
    fun shouldReturnFalseForAndExpressionWhenOneOfTheSubExpressionsAreFalse() {
        evaluateExpression(
            And(
                subExpressions = listOf(
                    Always,
                    Never,
                )
            ),
            EmbarkStore(),
        ) shouldBe false
    }

    @Test
    fun shouldReturnFalseForAndExpressionWhenAllOfTheSubExpressionsAreFalse() {
        evaluateExpression(
            And(
                subExpressions = listOf(
                    Never,
                    Never,
                )
            ),
            EmbarkStore(),
        ) shouldBe false
    }

    @Test
    fun shouldReturnTrueForOrExpressionWhenOneOfTheSubExpressionsAreTrue() {
        evaluateExpression(
            Or(
                subExpressions = listOf(
                    Always,
                    Never,
                )
            ),
            EmbarkStore(),
        ) shouldBe true
    }

    @Test
    fun shouldReturnFalseForOrExpressionWhenAllOfTheSubExpressionsAreFalse() {
        evaluateExpression(
            Or(
                subExpressions = listOf(
                    Never,
                    Never,
                )
            ),
            EmbarkStore(),
        ) shouldBe false
    }
}
