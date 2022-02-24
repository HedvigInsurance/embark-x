package com.hedvig.embarkx.computedvalues

import com.hedvig.embarkx.store.EmbarkStore

fun evaluate(
    computedValuesExpression: String,
    store: EmbarkStore,
): String {
    val tokens = tokenize(computedValuesExpression)
    val abstractExpression = parse(tokens)
    return evaluate(abstractExpression, store)
}
