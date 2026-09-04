// swift-tools-version: 6.2
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

private let name = "KoaGiftsStorage"
private let nameTest = name + "Tests"

let package = Package(
    name: name,
    platforms: [
        .iOS(.v17),
    ],
    products: [
        .library(
            name: name,
            targets: [name]
        ),
    ],
    targets: [
        .target(
            name: name,
            resources: [
                .copy("Resources/Letters.txt"),
                .copy("Resources/Definitions.txt"),
                .copy("Resources/ASMRs.txt"),
                .copy("Resources/VideoSections.txt"),
            ]
        ),
        .testTarget(
            name: nameTest,
            dependencies: ["KoaGiftsStorage"]
        ),
    ]
)
