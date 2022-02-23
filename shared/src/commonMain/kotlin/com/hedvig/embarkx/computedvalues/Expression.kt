package com.hedvig.embarkx.computedvalues

internal sealed interface Expression

internal data class StringConstantExpression(
    val value: String
) : Expression

internal data class NumericExpression(
    val value: Float,
) : Expression

internal data class VariableExpression(
    val key: String,
) : Expression

internal data class BinaryExpression(
    val left: Expression?,
    val right: Expression?,
    val operator: Operator,
) : Expression
