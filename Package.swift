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
            url: "https://github.com/HedvigInsurance/embark-x/releases/download/v0.2.6/EmbarkX-v0.2.6.zip",
            checksum: "54eb4469e610d33200eb5f1b7d3f45c45d9d22ab9b2d35a744e4cb7545a4abe1"
        ),
    ]
)
