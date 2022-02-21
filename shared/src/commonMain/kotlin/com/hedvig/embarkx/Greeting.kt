package com.hedvig.embarkx

class Greeting {
    fun greeting(): String {
        return "Hello, ${Platform().platform}!"
    }
}