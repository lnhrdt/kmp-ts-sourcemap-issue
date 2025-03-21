rootProject.name = "kmp-ts-sourcemap-issue"

include(":mylib-common-js")
include(":mylib-es-modules")

dependencyResolutionManagement {
    @Suppress("UnstableApiUsage")
    repositories {
        mavenCentral()
    }
}
