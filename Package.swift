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
            url: "https://github.com/HedvigInsurance/embark-x/releases/download/v0.2.4/EmbarkX-v0.2.4.zip",
            checksum: "311e9340d9a64aeaa3487efc08c431e25ec653e4397c45c3c3e53aa575908dd9"
        ),
    ]
)
