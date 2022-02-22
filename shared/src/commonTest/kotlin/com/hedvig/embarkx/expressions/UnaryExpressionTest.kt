package com.hedvig.embarkx.expressions

import com.hedvig.embarkx.store.EmbarkStore
import io.kotest.matchers.shouldBe
import kotlin.test.Test

class UnaryExpressionTest {
    @Test
    fun shouldReturnTrueForAlwaysExpression() {
        evaluateExpression(Always, EmbarkStore()) shouldBe true
    }

    @Test
    fun shouldReturnFalseForNeverExpression() {
        evaluateExpression(Never, EmbarkStore()) shouldBe false
    }
}
