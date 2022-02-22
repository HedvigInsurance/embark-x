// swift-tools-version:5.5
import PackageDescription

let package = Package(
    name: "EmbarkX",
    platforms: [
        .iOS(.v13)
    ],
    products: [
        .library(
            name: "EmbarkX",
            targets: ["EmbarkX"]
        ),
    ],
    targets: [
        .binaryTarget(
            name: "EmbarkX",
            url: "https://github.com/HedvigInsurance/embark-x/releases/download/v0.0.2/EmbarkX-unspecified.zip",
            checksum: "facd1cfa6012c17671ec772a3001d12e"
        ),
    ]
)
