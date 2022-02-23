package com.hedvig.embarkx.computedvalues

import io.kotest.matchers.shouldBe
import kotlin.test.Test

class TokenizerTest {
    @Test
    fun shouldReturnNoTokensForWhitespace() {
        tokenize("   \n") shouldBe emptyList()
    }

    @Test
    fun shouldReturnNumberTokenForNumericLiteral() {
        tokenize("2") shouldBe listOf(NumericConstantToken("2"))
    }

    @Test
    fun shouldReturnStringTokenForStringLiteralWithDoubleQuotes() {
        tokenize("\"example\"") shouldBe listOf(
            StringConstantToken("\"example\"")
        )
    }

    @Test
    fun shouldReturnStringTokenForStringLiteralWithSingleQuotes() {
        tokenize("'example'") shouldBe listOf(
            StringConstantToken("'example'")
        )
    }

    @Test
    fun shouldReturnVariableTokenForVariable() {
        tokenize("foo") shouldBe listOf(
            VariableToken("foo")
        )
    }

    @Test
    fun shouldReturnBinaryOperatorForAddition() {
        tokenize("+") shouldBe listOf(BinaryOperatorToken("+"))
    }

    @Test
    fun shouldReturnBinaryOperatorForSubtraction() {
        tokenize("-") shouldBe listOf(BinaryOperatorToken("-"))
    }

    @Test
    fun shouldReturnBinaryOperatorForStringConcatenation() {
        tokenize("++") shouldBe listOf(BinaryOperatorToken("++"))
    }
}
