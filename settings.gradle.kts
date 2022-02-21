pluginManagement {
    repositories {
        google()
        gradlePluginPortal()
        mavenCentral()
    }
}

rootProject.name = "EmbarkX"

include(":shared")

enableFeaturePreview("VERSION_CATALOGS")
