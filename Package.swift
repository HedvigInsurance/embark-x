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
            url: "https://github.com/HedvigInsurance/embark-x/releases/download/v0.2.8/EmbarkX-v0.2.8.zip",
            checksum: "d3f7fedb9784128fba9f64ba7345f0e8297e45da703db8d1766bb7693c2d7894"
        ),
    ]
)
