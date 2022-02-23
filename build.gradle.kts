version = "0.0.1"

buildscript {
    repositories {
        gradlePluginPortal()
        google()
        mavenCentral()
    }
    dependencies {
        val libs = project
            .extensions
            .getByName("libs") as org.gradle.accessors.dm.LibrariesForLibs
        classpath(libs.android.gradlePlugin)
        classpath(libs.apollo.gradlePlugin)
        classpath(libs.kotlin.gradlePlugin)
        classpath(libs.npmPublish.gradlePlugin)

        classpath("com.hedvig.embarkx:js-namespace:0.0.1")
    }
}

plugins {
    id("com.diffplug.spotless") version "6.3.0"
}

spotless {
    kotlin {
        target("**/*.kt")
        ktlint("0.44.0")
    }
}

allprojects {
    repositories {
        google()
        mavenCentral()
    }
}

rootProject.plugins.withType<org.jetbrains.kotlin.gradle.targets.js.nodejs.NodeJsRootPlugin> {
    rootProject.the<org.jetbrains.kotlin.gradle.targets.js.nodejs.NodeJsRootExtension>().nodeVersion =
        "16.13.0"
}
