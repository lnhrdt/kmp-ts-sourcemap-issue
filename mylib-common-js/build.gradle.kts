plugins {
    alias(libs.plugins.kotlinMultiplatform)
}

kotlin {
    js {
        outputModuleName = project.name
        binaries.executable()
        browser()
        useCommonJs()
    }

    sourceSets {
        all {
            languageSettings.optIn("kotlin.js.ExperimentalJsExport")
        }
    }
}
