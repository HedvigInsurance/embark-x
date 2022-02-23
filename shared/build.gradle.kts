import org.jetbrains.kotlin.gradle.plugin.mpp.KotlinNativeTarget
import org.jetbrains.kotlin.gradle.plugin.mpp.apple.XCFramework

plugins {
    kotlin("multiplatform")
    id("com.android.library")
    id("com.chromaticnoise.multiplatform-swiftpackage") version "2.0.3"
    id("dev.petuska.npm.publish") // Enables bundling our JS target code into an NPM package
    id("com.apollographql.apollo3") // Enables GraphQL models codegen plus stuff like downloadApolloSchema gradle task
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

    val xcf = XCFramework()

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

        multiplatformSwiftPackage {
            packageName("EmbarkX")
            swiftToolsVersion("5.5")
            targetPlatforms {
                iOS { v("13") }
            }
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

android { // From plugin id: com.android.library
    compileSdk = libs.versions.compileSdkVersion.get().toInt()
    sourceSets["main"].manifest.srcFile("src/androidMain/AndroidManifest.xml")
    defaultConfig {
        minSdk = libs.versions.minSdkVersion.get().toInt()
        targetSdk = libs.versions.targetSdkVersion.get().toInt()
    }
}

npmPublishing { // From plugin id: dev.petuska.npm.publish
    organization = "hedviginsurance"

    publications {
        named("js") {
            version = rootProject.version.toString()
        }
    }
}

apollo { // From plugin id: com.apollographql.apollo3
    service("giraffe") {
//        codegenModels.set(com.apollographql.apollo3.compiler.MODELS_OPERATION_BASED)
        codegenModels.set(com.apollographql.apollo3.compiler.MODELS_RESPONSE_BASED)

        packageName.set("com.hedvig.giraffe")
        srcDir(file("src/commonMain/graphql/com/hedvig/embarkx"))
        schemaFile.set(file("src/commonMain/graphql/com/hedvig/embarkx/schema.graphqls"))

        introspection {
            endpointUrl.set("https://graphql.dev.hedvigit.com/graphql")
            schemaFile.set(file("src/commonMain/graphql/com/hedvig/embarkx/schema.graphqls"))
        }

        alwaysGenerateTypesMatching.add("Locale")
    }
}
