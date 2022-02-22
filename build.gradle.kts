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
        classpath(libs.kotest.gradlePlugin)
        classpath(libs.kotlin.gradlePlugin)
        classpath(libs.npmPublish.gradlePlugin)
    }
}

allprojects {
    repositories {
        google()
        mavenCentral()
    }
}

rootProject.plugins.withType<org.jetbrains.kotlin.gradle.targets.js.nodejs.NodeJsRootPlugin> {
    rootProject.the<org.jetbrains.kotlin.gradle.targets.js.nodejs.NodeJsRootExtension>().nodeVersion = "16.13.0"
}
