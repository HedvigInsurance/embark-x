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
            url: "https://github.com/HedvigInsurance/embark-x/releases/download/v0.2.0/EmbarkX-unspecified.zip",
            checksum: "997230960d9fbc39b6c579b9a135c544edf6de9ebc93825cfaa49cc0fda83713"
        ),
    ]
)
