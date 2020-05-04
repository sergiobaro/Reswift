// swift-tools-version:5.2
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "reswift",
    platforms: [
        .macOS(.v10_15)
    ],
    products: [
        .executable(name: "reswift", targets: ["reswift"]),
        .library(name: "ReswiftLib", targets: ["ReswiftLib"])
    ],
    targets: [
        .target(
            name: "reswift",
            dependencies: ["ReswiftLib"]
        ),
        .target(
            name: "ReswiftLib"
        ),
        .testTarget(
            name: "ReswiftLibTests",
            dependencies: ["ReswiftLib"]),
    ]
)
