package com.hedvig.embarkx

import kotlin.js.JsExport

@JsExport
class Greeting {

    fun greeting(): String {
        return "Hello, ${Platform().platform}!"
    }
}
