package com.hedvig.embarkx.util

import io.kotest.assertions.throwables.shouldThrow
import io.kotest.matchers.shouldBe
import kotlin.test.Test
import kotlin.js.JsName

class StackTest {
    @Test
    @JsName("should_throw_when_popping_an_empty_stack")
    fun `should throw when popping an empty stack`() {
        val stack = Stack<Unit>()
        shouldThrow<EmptyStackException> { stack.pop() }
    }

    @Test
    @JsName("should_throw_when_peeking_an_empty_stack")
    fun `should throw when peeking an empty stack`() {
        val stack = Stack<Unit>()
        shouldThrow<EmptyStackException> { stack.peek() }
    }

    @Test
    @JsName("should_return_latest_pushed_value_when_peeking")
    fun `should return latest pushed value when peeking`() {
        val stack = Stack<String>()

        stack.push("foo")

        stack.peek() shouldBe "foo"
    }

    @Test
    @JsName("should_return_latest_pushed_value_when_popping")
    fun `should return latest pushed value when popping`() {
        val stack = Stack<String>()

        stack.push("foo")

        stack.pop() shouldBe "foo"
    }

    @Test
    @JsName("when_multiple_items_are_pushed_they_are_returned_in_order_when_popping_them")
    fun `when multiple items are pushed they are returned in order when popping them`() {
        val stack = Stack<String>()

        stack.push("foo")
        stack.push("bar")

        stack.pop() shouldBe "bar"
        stack.pop() shouldBe "foo"
    }
}
