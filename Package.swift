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
            url: "https://github.com/HedvigInsurance/embark-x/releases/download/v0.2.10/EmbarkX-v0.2.10.zip",
            checksum: "0eb3f3d8be2d1104f4c23870fda05de4438c1b5fe3a961dd24e4e127483d6961"
        ),
    ]
)
