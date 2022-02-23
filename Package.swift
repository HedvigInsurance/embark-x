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
            url: "https://github.com/HedvigInsurance/embark-x/releases/download/v0.1.1/EmbarkX-unspecified.zip",
            checksum: "bc89d0cd29cda3c3ef79efaea079ecadd4693a49b389e62e505678e3a481ed1c"
        ),
    ]
)
