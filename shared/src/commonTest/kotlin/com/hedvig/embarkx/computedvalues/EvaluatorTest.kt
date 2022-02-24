package com.hedvig.embarkx.computedvalues

import com.hedvig.embarkx.store.EmbarkStore
import io.kotest.matchers.shouldBe
import kotlin.test.Test

class EvaluatorTest {
    @Test
    fun shouldEvaluateStringConstantExpression() {
        evaluate(StringConstantExpression("example"), EmbarkStore()) shouldBe "example"
    }

    @Test
    fun shouldEvaluateNumericExpression() {
        evaluate(NumericExpression(1f), EmbarkStore()) shouldBe "1"
    }

    @Test
    fun shouldEvaluateVariableExpression() {
        val store = EmbarkStore()
        store.put("foo", "bar")
        store.commit()
        evaluate(VariableExpression("foo"), store) shouldBe "bar"
    }

    @Test
    fun shouldEvaluateBinaryAdditionExpressionWithConstants() {
        evaluate(
            BinaryExpression(
                left = NumericExpression(1f),
                right = NumericExpression(1f),
                operator = Operator.ADDITION,
            ),
            EmbarkStore()
        ) shouldBe "2"
    }

    @Test
    fun shouldEvaluateBinarySubtractionExpressionWithConstants() {
        evaluate(
            BinaryExpression(
                left = NumericExpression(1f),
                right = NumericExpression(1f),
                operator = Operator.SUBTRACTION,
            ),
            EmbarkStore()
        ) shouldBe "0"
    }

    @Test
    fun shouldEvaluateBinaryStringConcatenationExpressionWithConstants() {
        evaluate(
            BinaryExpression(
                left = StringConstantExpression("foo"),
                right = StringConstantExpression("bar"),
                operator = Operator.STRING_CONCATENATION,
            ),
            EmbarkStore()
        ) shouldBe "foobar"
    }
}
