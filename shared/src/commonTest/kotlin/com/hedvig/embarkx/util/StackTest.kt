package com.hedvig.embarkx.util

import io.kotest.assertions.throwables.shouldThrow
import io.kotest.matchers.shouldBe
import kotlin.test.Test

class StackTest {
    @Test
    fun shouldThrowWhenPoppingAnEmptyStack() {
        val stack = Stack<Unit>()
        shouldThrow<EmptyStackException> { stack.pop() }
    }

    @Test
    fun shouldThrowWhenPeekingAnEmptyStack() {
        val stack = Stack<Unit>()
        shouldThrow<EmptyStackException> { stack.peek() }
    }

    @Test
    fun shouldReturnLatestPushedValueWhenPeeking() {
        val stack = Stack<String>()

        stack.push("foo")

        stack.peek() shouldBe "foo"
    }

    @Test
    fun shouldReturnLatestPushedValueWhenPopping() {
        val stack = Stack<String>()

        stack.push("foo")

        stack.pop() shouldBe "foo"
    }

    @Test
    fun whenMultipleItemsArePushedTheyAreReturnedInOrderWhenPoppingThem() {
        val stack = Stack<String>()

        stack.push("foo")
        stack.push("bar")

        stack.pop() shouldBe "bar"
        stack.pop() shouldBe "foo"
    }
}
