plugins {
    `kotlin-dsl`
    `java-gradle-plugin`
}

repositories {
    mavenCentral()
}

dependencies {
    compileOnly(kotlin("gradle-plugin"))
}

gradlePlugin {
    plugins {
        create("js-namespace") {
            id = "com.hedvig.embarkx"
            implementationClass = "com.hedvig.embarkx.gradle.plugin.KotlinToJsNamespaceClearingPlugin"
            version = "0.0.1"
        }
    }
}
