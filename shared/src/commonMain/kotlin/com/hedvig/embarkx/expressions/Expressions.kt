package com.hedvig.embarkx.expressions

fun evaluateExpression(expression: Expression) = when (expression) {
    is Expression.Unary -> evaluateUnaryExpression(expression)
    is Expression.Binary.Equals -> TODO()
    is Expression.Binary.GreaterThan -> TODO()
    is Expression.Binary.GreaterThanOrEquals -> TODO()
    is Expression.Binary.LessThan -> TODO()
    is Expression.Binary.LessThanOrEquals -> TODO()
    is Expression.Binary.NotEquals -> TODO()
    is Expression.Multiple.And -> TODO()
    is Expression.Multiple.Or -> TODO()
    Expression.Unary.Always -> TODO()
    Expression.Unary.Never -> TODO()
}

private fun evaluateUnaryExpression(expression: Expression.Unary) = when (expression) {
    Expression.Unary.Always -> true
    Expression.Unary.Never -> false
}
