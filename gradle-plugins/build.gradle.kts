plugins {
    `java-gradle-plugin`
//    `kotlin-dsl`
    `kotlin-dsl-precompiled-script-plugins`
//    kotlin("js") apply false
}

repositories {
    mavenCentral()
}

gradlePlugin {
    plugins {
        create("simplePlugin") {
            id = "org.example.greeting"
            implementationClass = "org.example.GreetingPlugin"
        }
    }
}
