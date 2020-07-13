// swift-tools-version:5.2

import PackageDescription

let package = Package(
    name: "FileSelectorView",
    platforms: [
        .macOS(.v10_15)
    ],
    products: [
        .library(
            name: "FileSelectorView",
            targets: ["FileSelectorView"]),
    ],
    dependencies: [
    ],
    targets: [
        .target(
            name: "FileSelectorView",
            dependencies: [])
    ]
)
