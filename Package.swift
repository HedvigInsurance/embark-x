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
            "url: https://github.com/HedvigInsurance/embark-x/releases/download/v0.0.8-swift-package.0/EmbarkX-unspecified.zip"
            checksum: 397413bf7f6ea324e7aeb087a38a96ec
        ),
    ]
)
