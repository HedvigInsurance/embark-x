package com.hedvig.embarkx.expressions

sealed interface Expression

sealed interface Unary : Expression

object Always : Unary
object Never : Unary

sealed interface Binary : Expression {
    val key: String
    val value: String
}

data class Equals(
    override val key: String,
    override val value: String,
) : Binary

data class NotEquals(
    override val key: String,
    override val value: String,
) : Binary

data class GreaterThan(
    override val key: String,
    override val value: String,
) : Binary

data class GreaterThanOrEquals(
    override val key: String,
    override val value: String,
) : Binary

data class LessThan(
    override val key: String,
    override val value: String,
) : Binary

data class LessThanOrEquals(
    override val key: String,
    override val value: String,
) : Binary

sealed interface Multiple : Expression {
    val subExpressions: List<Expression>
}

data class And(
    override val subExpressions: List<Expression>,
) : Multiple

data class Or(
    override val subExpressions: List<Expression>,
) : Multiple
