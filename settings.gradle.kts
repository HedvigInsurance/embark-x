pluginManagement {
    repositories {
        google()
        gradlePluginPortal()
        mavenCentral()
    }
}

rootProject.name = "EmbarkX"

include(":shared")
include(":gradle-plugins")

enableFeaturePreview("VERSION_CATALOGS")
