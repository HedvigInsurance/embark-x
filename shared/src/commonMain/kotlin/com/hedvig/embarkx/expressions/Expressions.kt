package com.hedvig.embarkx.expressions

import com.hedvig.embarkx.store.EmbarkStore

fun evaluateExpression(expression: Expression, store: EmbarkStore) = when (expression) {
    is Unary -> evaluateUnaryExpression(expression)
    is Binary -> evaluateBinaryExpression(expression, store)
    is Multiple -> evaluateMultipleExpression(expression, store)
}

private fun evaluateUnaryExpression(expression: Unary) = when (expression) {
    Always -> true
    Never -> false
}

private fun evaluateBinaryExpression(expression: Binary, store: EmbarkStore): Boolean {
    val valueFromStore = store.get(expression.key)

    return when (expression) {
        is Equals -> valueFromStore == expression.value
        is GreaterThan,
        is GreaterThanOrEquals,
        is LessThan,
        is LessThanOrEquals -> {
            val valueFromStoreAsInt = valueFromStore?.toIntOrNull() ?: return false
            val valueAsInt = expression.value.toIntOrNull() ?: return false
            return when (expression) {
                is GreaterThan -> valueFromStoreAsInt > valueAsInt
                is GreaterThanOrEquals -> valueFromStoreAsInt >= valueAsInt
                is LessThan -> valueFromStoreAsInt < valueAsInt
                is LessThanOrEquals -> valueFromStoreAsInt <= valueAsInt
                else -> false
            }
        }
        is NotEquals -> valueFromStore != expression.value
    }
}

private fun evaluateMultipleExpression(
    expression: Multiple,
    store: EmbarkStore
): Boolean {
    val evaluatedSubExpressions = expression.subExpressions.map { evaluateExpression(it, store) }
    return when (expression) {
        is And -> evaluatedSubExpressions.all { it }
        is Or -> evaluatedSubExpressions.any { it }
    }
}
