package com.hedvig.embarkx.expressions

import com.hedvig.embarkx.store.EmbarkStore

fun evaluateExpression(expression: Expression, store: EmbarkStore) = when (expression) {
    is Expression.Unary -> evaluateUnaryExpression(expression)
    is Expression.Binary -> evaluateBinaryExpression(expression, store)
    is Expression.Multiple.And -> TODO()
    is Expression.Multiple.Or -> TODO()
    Expression.Unary.Always -> TODO()
    Expression.Unary.Never -> TODO()
}

private fun evaluateUnaryExpression(expression: Expression.Unary) = when (expression) {
    Expression.Unary.Always -> true
    Expression.Unary.Never -> false
}

private fun evaluateBinaryExpression(expression: Expression.Binary, store: EmbarkStore): Boolean {
    val valueFromStore = store.get(expression.key)

    return when (expression) {
        is Expression.Binary.Equals -> valueFromStore == expression.value
        is Expression.Binary.GreaterThan -> TODO()
        is Expression.Binary.GreaterThanOrEquals -> TODO()
        is Expression.Binary.LessThan -> TODO()
        is Expression.Binary.LessThanOrEquals -> TODO()
        is Expression.Binary.NotEquals -> TODO()
    }
}
