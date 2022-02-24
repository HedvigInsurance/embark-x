import org.jetbrains.kotlin.gradle.plugin.mpp.KotlinNativeTarget
import org.jetbrains.kotlin.gradle.plugin.mpp.apple.XCFramework

plugins {
    kotlin("multiplatform")
    id("com.android.library")
    id("dev.petuska.npm.publish")
}

kotlin {
    android()

    js(IR) {
        browser()
        nodejs()
        binaries.library()
    }

    val iosX64 = iosX64()
    val iosArm64 = iosArm64()
    val iosSimulatorArm64 = iosSimulatorArm64()

    val xcf = XCFramework("EmbarkX")

    sourceSets {
        all {
            languageSettings.optIn("kotlin.js.ExperimentalJsExport")
        }

        val commonMain by getting {
            dependencies {
                implementation(libs.apollo.runtime)
                implementation(libs.arrowKt.core)
                implementation(libs.coroutines.core)
                implementation(libs.koin.core)
                implementation(libs.kotlin.stdlib)
            }
        }
        val commonTest by getting {
            dependencies {
                implementation(libs.coroutines.test)
                implementation(libs.koin.test)

                implementation(kotlin("test-common"))
                implementation(kotlin("test-annotations-common"))
                implementation("io.kotest:kotest-assertions-core:5.1.0")
            }
        }

        @Suppress("UNUSED_VARIABLE")
        val androidMain by getting {
            dependsOn(commonMain)
        }

        @Suppress("UNUSED_VARIABLE")
        val androidTest by getting {
            dependsOn(commonTest)
            dependencies {
                implementation(kotlin("test-junit"))
            }
        }

        @Suppress("UNUSED_VARIABLE")
        val jsMain by getting {
            dependsOn(commonMain)
            dependencies {
                implementation("org.jetbrains.kotlin-wrappers:kotlin-extensions:1.0.1-pre.304-kotlin-1.6.10")
            }
        }

        @Suppress("UNUSED_VARIABLE")
        val jsTest by getting {
            dependsOn(commonTest)
        }

        val iosMain by creating {
            dependsOn(commonMain)
        }
        val iosTest by creating {
            dependsOn(commonTest)
        }

        listOf(
            iosX64, iosArm64, iosSimulatorArm64
        ).forEach { target: KotlinNativeTarget ->
            target.binaries.framework {
                baseName = "shared"
                xcf.add(this)
            }
            getByName("${target.targetName}Main") {
                dependsOn(iosMain)
            }
            getByName("${target.targetName}Test") {
                dependsOn(iosTest)
            }
        }
    }
}

android {
    compileSdk = libs.versions.compileSdkVersion.get().toInt()
    sourceSets["main"].manifest.srcFile("src/androidMain/AndroidManifest.xml")
    defaultConfig {
        minSdk = libs.versions.minSdkVersion.get().toInt()
        targetSdk = libs.versions.targetSdkVersion.get().toInt()
    }
}

npmPublishing {
    organization = "hedviginsurance"

    publications {
        named("js") {
            version = rootProject.version.toString()
        }
    }
}
