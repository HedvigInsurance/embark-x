package com.hedvig.embarkx.expressions

sealed class Expression {
    sealed class Unary : Expression() {
        object Always : Unary()
        object Never : Unary()
    }

    sealed class Binary : Expression() {
        data class Equals(
            val key: String,
            val value: String,
        ) : Binary()

        data class NotEquals(
            val key: String,
            val value: String,
        ) : Binary()

        data class GreaterThan(
            val key: String,
            val value: String,
        ) : Binary()

        data class GreaterThanOrEquals(
            val key: String,
            val value: String,
        ) : Binary()

        data class LessThan(
            val key: String,
            val value: String,
        ) : Binary()

        data class LessThanOrEquals(
            val key: String,
            val value: String,
        ) : Binary()
    }

    sealed class Multiple : Expression() {
        data class And(
            val subExpressions: List<Expression>,
        ) : Multiple()

        data class Or(
            val subExpressions: List<Expression>,
        ) : Multiple()
    }
}
