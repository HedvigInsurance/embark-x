package com.hedvig.embarkx.expressions

sealed class Expression {
    sealed class Unary : Expression() {
        object Always : Unary()
        object Never : Unary()
    }

    sealed class Binary : Expression() {
        abstract val key: String
        abstract val value: String

        data class Equals(
            override val key: String,
            override val value: String,
        ) : Binary()

        data class NotEquals(
            override val key: String,
            override val value: String,
        ) : Binary()

        data class GreaterThan(
            override val key: String,
            override val value: String,
        ) : Binary()

        data class GreaterThanOrEquals(
            override val key: String,
            override val value: String,
        ) : Binary()

        data class LessThan(
            override val key: String,
            override val value: String,
        ) : Binary()

        data class LessThanOrEquals(
            override val key: String,
            override val value: String,
        ) : Binary()
    }

    sealed class Multiple : Expression() {
        abstract val subExpressions: List<Expression>

        data class And(
            override val subExpressions: List<Expression>,
        ) : Multiple()

        data class Or(
            override val subExpressions: List<Expression>,
        ) : Multiple()
    }
}
