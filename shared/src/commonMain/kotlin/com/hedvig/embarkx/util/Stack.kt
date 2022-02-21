package com.hedvig.embarkx.util

class Stack<T> {
    private val inner = ArrayDeque<T>()

    fun pop(): T {
        val ret = peek()
        inner.removeLast()
        return ret
    }

    fun push(value: T) {
        inner.add(value)
    }

    fun peek(): T {
        if (inner.isEmpty()) {
            throw EmptyStackException()
        }
        return inner.last()
    }
}
