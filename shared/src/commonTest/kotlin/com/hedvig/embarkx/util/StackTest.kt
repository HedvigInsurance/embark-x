package com.hedvig.embarkx.util

import io.kotest.assertions.throwables.shouldThrow
import io.kotest.matchers.shouldBe
import kotlin.test.Test

class StackTest {
    @Test
    fun `should throw when popping an empty stack`() {
        val stack = Stack<Unit>()
        shouldThrow<EmptyStackException> { stack.pop() }
    }

    @Test
    fun `should throw when peeking an empty stack`() {
        val stack = Stack<Unit>()
        shouldThrow<EmptyStackException> { stack.peek() }
    }

    @Test
    fun `should return latest pushed value when peeking`() {
        val stack = Stack<String>()

        stack.push("foo")

        stack.peek() shouldBe "foo"
    }

    @Test
    fun `should return latest pushed value when popping`() {
        val stack = Stack<String>()

        stack.push("foo")

        stack.pop() shouldBe "foo"
    }

    @Test
    fun `when multiple items are pushed, they are returned in order when popping them`() {
        val stack = Stack<String>()

        stack.push("foo")
        stack.push("bar")

        stack.pop() shouldBe "bar"
        stack.pop() shouldBe "foo"
    }
}
