package com.hedvig.embarkx.computedvalues

private val LEADING_WHITESPACE = Regex("^\\s+")
private val NUMERIC_CONSTANT = Regex("^\\d+(\\.\\d+)?")
private val DOUBLE_QUOTES_STRING_CONSTANT = Regex("^\"([^\"]*)\"")
private val SINGLE_QUOTES_STRING_CONSTANT = Regex("^'([^']*)'")
private val VARIABLE = Regex("^([a-zA-Z][\\w\\d]*)")
private val BINARY_OPERATOR = Regex("^(-|\\+\\+|\\+)")

private val matchers = listOf<(String) -> Token?>(
    { s ->
        if (s.contains(NUMERIC_CONSTANT)) {
            NumericConstantToken(NUMERIC_CONSTANT.find(s)!!.groups.first()!!.value)
        } else {
            null
        }
    },
    { s ->
        when {
            s.contains(DOUBLE_QUOTES_STRING_CONSTANT) -> {
                StringConstantToken(DOUBLE_QUOTES_STRING_CONSTANT.find(s)!!.groups.first()!!.value)
            }
            s.contains(SINGLE_QUOTES_STRING_CONSTANT) -> {
                StringConstantToken(SINGLE_QUOTES_STRING_CONSTANT.find(s)!!.groups.first()!!.value)
            }
            else -> null
        }
    },
    { s ->
        if (s.contains(VARIABLE)) {
            VariableToken(VARIABLE.find(s)!!.groups.first()!!.value)
        } else {
            null
        }
    },
    { s ->
        if (s.contains(BINARY_OPERATOR)) {
            BinaryOperatorToken(BINARY_OPERATOR.find(s)!!.groups.first()!!.value)
        } else {
            null
        }
    }
)

internal fun tokenize(computedValuesExpression: String): List<Token> {
    var cursor = 0
    val tokens = mutableListOf<Token>()
    while (cursor < computedValuesExpression.length) {
        val subExpression = computedValuesExpression.substring(
            cursor,
            computedValuesExpression.length
        )
        if (subExpression.contains(LEADING_WHITESPACE)) {
            cursor += LEADING_WHITESPACE.find(subExpression)!!.groups.first()!!.value.length
            continue
        }

        val token = matchers.firstNotNullOfOrNull { it(subExpression) }
            ?: throw IllegalComputedValue("Unable to tokenize expression")
        tokens += token
        cursor += token.payload.length
    }
    return tokens
}
