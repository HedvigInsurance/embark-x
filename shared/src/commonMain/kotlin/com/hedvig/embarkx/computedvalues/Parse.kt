package com.hedvig.embarkx.computedvalues

enum class Operator {
    ADDITION,
    SUBTRACTION,
    STRING_CONCATENATION;

    companion object {
        fun from(str: String) = when (str) {
            "+" -> ADDITION
            "-" -> SUBTRACTION
            "++" -> STRING_CONCATENATION
            else -> throw IllegalComputedValue("Invalid operator: $str")
        }
    }
}

internal fun parse(tokens: List<Token>): Expression {
    var currentExpression: Expression? = null
    tokens.forEach { token ->
        when (token) {
            is StringConstantToken -> {
                val expression =
                    StringConstantExpression(
                        token
                            .payload
                            .replace("\"", "")
                            .replace("'", ""),
                    )

                currentExpression = (currentExpression as? BinaryExpression)?.copy(
                    right = expression
                ) ?: expression
            }
            is NumericConstantToken -> {
                val expression = NumericExpression(
                    token.payload.toFloat(),
                )

                currentExpression = (currentExpression as? BinaryExpression)?.copy(
                    right = expression,
                ) ?: expression
            }
            is VariableToken -> {
                val expression = VariableExpression(
                    token.payload,
                )
                currentExpression = (currentExpression as? BinaryExpression)?.copy(
                    right = expression,
                ) ?: expression
            }
            is BinaryOperatorToken -> {
                currentExpression = BinaryExpression(
                    left = currentExpression,
                    right = null,
                    operator = Operator.from(token.payload)
                )
            }
        }
    }
    return currentExpression ?: throw IllegalComputedValue("Unable to parse expression")
}
