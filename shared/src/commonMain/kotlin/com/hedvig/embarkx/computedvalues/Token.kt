package com.hedvig.embarkx.computedvalues

sealed interface Token {
    val payload: String
}

data class NumericConstantToken(
    override val payload: String,
) : Token

data class StringConstantToken(
    override val payload: String,
) : Token

data class VariableToken(
    override val payload: String,
) : Token

data class BinaryOperatorToken(
    override val payload: String,
) : Token
