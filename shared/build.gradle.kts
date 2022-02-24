import org.jetbrains.kotlin.gradle.plugin.mpp.KotlinNativeTarget
import org.jetbrains.kotlin.gradle.plugin.mpp.apple.XCFramework

plugins {
    kotlin("multiplatform")
    id("com.android.library")
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
                implementation(libs.apollo.testingSupport)
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
        codegenModels.set(com.apollographql.apollo3.compiler.MODELS_RESPONSE_BASED)
        flattenModels.set(true)

        packageName.set("com.hedvig.giraffe")
        srcDir(file("src/commonMain/graphql/com/hedvig/embarkx"))
        schemaFile.set(file("src/commonMain/graphql/com/hedvig/embarkx/schema.graphqls"))

        introspection {
            endpointUrl.set("https://graphql.dev.hedvigit.com/graphql")
            schemaFile.set(file("src/commonMain/graphql/com/hedvig/embarkx/schema.graphqls"))
        }

        // Test builders
        generateKotlinModels.set(true)
        generateTestBuilders.set(true)

        alwaysGenerateTypesMatching.add("Locale")
    }
}

// Workaround for https://github.com/HedvigInsurance/key-gear/pull/39
tasks.withType(com.apollographql.apollo3.gradle.internal.ApolloDownloadSchemaTask::class.java) {
    doLast {
        val downloadedSchema = file("src/commonMain/graphql/com/hedvig/embarkx/schema.graphqls")
        val patchedSchema = file("src/commonMain/graphql/com/hedvig/embarkx/schema.graphqls")
        patchedSchema.writeText(
            downloadedSchema.readText()
                .replace(
                    oldValue = "\"\"\"${System.lineSeparator()}  \\\"\"\"",
                    newValue = "\"\"\"",
                    ignoreCase = false
                )
                .replace(
                    oldValue = "\\\"\"\"${System.lineSeparator()}  \"\"\"",
                    newValue = "\"\"\"",
                    ignoreCase = false
                )
        )
    }
}
