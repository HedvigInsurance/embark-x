package com.hedvig.embarkx.computedvalues

import com.hedvig.embarkx.store.EmbarkStore
import io.kotest.matchers.shouldBe
import kotlin.test.Test

class ComputedValuesTest {
    private val emptyStore = EmbarkStore()

    @Test
    fun shouldReturnNumericLiteral() {
        evaluate("2", emptyStore) shouldBe "2"
    }

    @Test
    fun shouldEvaluateAddition() {
        evaluate("41+1", emptyStore) shouldBe "42"
    }

    @Test
    fun shouldEvaluateMixedMathematicalOperators() {
        evaluate(
            "1 +2 +3 -1",
            emptyStore,
        ) shouldBe "5"
    }

    @Test
    fun shouldEvaluateFloatAddition() {
        evaluate(
            "13.17 + 0.2",
            emptyStore,
        ) shouldBe "13.37"
    }

    @Test
    fun shouldEvaluateIntAndFloatAddition() {
        evaluate(
            "13 + 0.37",
            emptyStore,
        ) shouldBe "13.37"
    }

    @Test
    fun shouldEvaluateEvenFloatsToInt() {
        evaluate(
            "1337 + 1.0",
            emptyStore,
        ) shouldBe "1338"
    }

    @Test
    fun shouldConcatenateDoubleQuoteStrings() {
        evaluate(
            "\"133\" ++ \"7\"",
            emptyStore,
        ) shouldBe "1337"
    }

    @Test
    fun shouldEvaluateSingleQuoteStrings() {
        evaluate(
            "'foo'",
            emptyStore,
        ) shouldBe "foo"
    }

    @Test
    fun shouldConcatenateSingleQuoteStrings() {
        evaluate(
            "'133' ++ '7'",
            emptyStore,
        ) shouldBe "1337"
    }

    @Test
    fun shouldConcatenateMixedSymbolStrings() {
        evaluate(
            "\"133\" ++ '7'",
            emptyStore,
        ) shouldBe "1337"
    }

    @Test
    fun shouldEvaluateVariableFromStore() {
        val store = EmbarkStore()
        store.put("myKey", "my value")
        store.commit()

        evaluate(
            "myKey",
            store,
        ) shouldBe "my value"
    }

    @Test
    fun shouldEvaluateAdditionReferencedFromStore() {
        val store = EmbarkStore()
        store.put("myKey", "41")
        store.commit()

        evaluate(
            "myKey + 1",
            store,
        ) shouldBe "42"
    }

    @Test
    fun shouldConcatenateStringReferencedFromStore() {
        val store = EmbarkStore()
        store.put("myKey", "bar")
        store.commit()

        evaluate(
            "'foo' ++ ' ' ++ myKey ++ ' ' ++ 'baz'",
            store,
        ) shouldBe "foo bar baz"
    }
}
