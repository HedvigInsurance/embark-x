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
            url: "https://github.com/HedvigInsurance/embark-x/releases/download/v0.2.2/EmbarkX-v0.2.2.zip",
            checksum: "9c5a77500de9e5615f8781ade19e46441f02bc195779d19b724e112de8d52dfa"
        ),
    ]
)
