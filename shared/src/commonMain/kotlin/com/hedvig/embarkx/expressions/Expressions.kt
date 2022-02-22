package com.hedvig.embarkx.expressions

import com.hedvig.embarkx.store.EmbarkStore

fun evaluateExpression(expression: Expression, store: EmbarkStore) = when (expression) {
    is Expression.Unary -> evaluateUnaryExpression(expression)
    is Expression.Binary -> evaluateBinaryExpression(expression, store)
    is Expression.Multiple -> evaluateMultipleExpression(expression, store)
}

private fun evaluateUnaryExpression(expression: Expression.Unary) = when (expression) {
    Expression.Unary.Always -> true
    Expression.Unary.Never -> false
}

private fun evaluateBinaryExpression(expression: Expression.Binary, store: EmbarkStore): Boolean {
    val valueFromStore = store.get(expression.key)

    return when (expression) {
        is Expression.Binary.Equals -> valueFromStore == expression.value
        is Expression.Binary.GreaterThan,
        is Expression.Binary.GreaterThanOrEquals,
        is Expression.Binary.LessThan,
        is Expression.Binary.LessThanOrEquals -> {
            val valueFromStoreAsInt = valueFromStore?.toIntOrNull() ?: return false
            val valueAsInt = expression.value.toIntOrNull() ?: return false
            return when (expression) {
                is Expression.Binary.GreaterThan -> valueFromStoreAsInt > valueAsInt
                is Expression.Binary.GreaterThanOrEquals -> valueFromStoreAsInt >= valueAsInt
                is Expression.Binary.LessThan -> valueFromStoreAsInt < valueAsInt
                is Expression.Binary.LessThanOrEquals -> valueFromStoreAsInt <= valueAsInt
                else -> false
            }
        }
        is Expression.Binary.NotEquals -> valueFromStore != expression.value
    }
}

private fun evaluateMultipleExpression(
    expression: Expression.Multiple,
    store: EmbarkStore
): Boolean {
    val evaluatedSubExpressions = expression.subExpressions.map { evaluateExpression(it, store) }
    return when (expression) {
        is Expression.Multiple.And -> evaluatedSubExpressions.all { it }
        is Expression.Multiple.Or -> evaluatedSubExpressions.any { it }
    }
}
