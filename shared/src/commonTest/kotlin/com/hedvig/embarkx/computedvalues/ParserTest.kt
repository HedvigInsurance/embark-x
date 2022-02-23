package com.hedvig.embarkx.computedvalues

import io.kotest.matchers.shouldBe
import kotlin.test.Test

class ParserTest {
    @Test
    fun shouldParseStringConstantToken() {
        parse(
            listOf(
                StringConstantToken("\"example\"")
            )
        ) shouldBe StringConstantExpression("example")
    }

    @Test
    fun shouldParseNumericConstantToken() {
        parse(
            listOf(
                NumericConstantToken("2")
            )
        ) shouldBe NumericExpression(2f)
    }

    @Test
    fun shouldParseVariableToken() {
        parse(
            listOf(
                VariableToken("foo")
            )
        ) shouldBe VariableExpression("foo")
    }

    @Test
    fun shouldParseBinaryTokenWithoutSiblings() {
        parse(
            listOf(
                BinaryOperatorToken("+")
            )
        ) shouldBe BinaryExpression(
            left = null,
            right = null,
            operator = Operator.ADDITION
        )
    }

    @Test
    fun shouldParseBinaryTokenWithNumericLeftHand() {
        parse(
            listOf(
                NumericConstantToken("1"),
                BinaryOperatorToken("+"),
            )
        ) shouldBe BinaryExpression(
            left = NumericExpression(1f),
            right = null,
            operator = Operator.ADDITION,
        )
    }

    @Test
    fun shouldParseBinaryTokenWithNumericRightHand() {
        parse(
            listOf(
                BinaryOperatorToken("+"),
                NumericConstantToken("1")
            )
        ) shouldBe BinaryExpression(
            left = null,
            right = NumericExpression(1f),
            operator = Operator.ADDITION,
        )
    }

    @Test
    fun shouldParseBinaryTokenWithStringRightHand() {
        parse(
            listOf(
                BinaryOperatorToken("++"),
                StringConstantToken("\"example\"")
            )
        ) shouldBe BinaryExpression(
            left = null,
            right = StringConstantExpression("example"),
            operator = Operator.STRING_CONCATENATION,
        )
    }

    @Test
    fun shouldParseBinaryTokenWithVariableRightHand() {
        parse(
            listOf(
                BinaryOperatorToken("++"),
                VariableToken("example")
            )
        ) shouldBe BinaryExpression(
            left = null,
            right = VariableExpression("example"),
            operator = Operator.STRING_CONCATENATION,
        )
    }
}
