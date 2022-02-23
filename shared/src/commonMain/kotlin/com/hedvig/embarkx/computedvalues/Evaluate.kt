package com.hedvig.embarkx.computedvalues

import com.hedvig.embarkx.store.EmbarkStore

internal fun evaluate(expression: Expression, store: EmbarkStore): String = when (expression) {
    is StringConstantExpression -> expression.value
    is NumericExpression -> expression.value.toString().stripTrailingZeroes()
    is VariableExpression -> store.get(expression.key) ?: ""
    is BinaryExpression -> {
        val leftExpression =
            expression.left ?: throw IllegalComputedValue("Unable to evaluate expression")
        val leftEval = evaluate(leftExpression, store)
        val rightExpression =
            expression.right ?: throw IllegalComputedValue("Unable to evaluate expression")
        val rightEval = evaluate(rightExpression, store)
        when (expression.operator) {
            Operator.ADDITION -> (leftEval.toFloat() + rightEval.toFloat())
                .toString()
                .stripTrailingZeroes()
            Operator.SUBTRACTION -> (leftEval.toFloat() - rightEval.toFloat())
                .toString()
                .stripTrailingZeroes()
            Operator.STRING_CONCATENATION -> leftEval + rightEval
        }
    }
}

private fun String.stripTrailingZeroes() = if (contains(TRAILING_ZEROES)) {
    replace(TRAILING_ZEROES, "")
} else {
    this
}

private val TRAILING_ZEROES = Regex("\\.0+$")
