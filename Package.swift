// swift-tools-version:5.2

import PackageDescription

let package = Package(
    name: "Version",
    platforms: [
        .macOS(.v10_15),
        .iOS(.v13),
        .watchOS(.v6),
        .tvOS(.v13)
    ],
    products: [
        .library(name: "Version", targets: [
            "Version"
        ])
    ],
    targets: [
        .target(name: "Version", dependencies: []),
        .testTarget(name: "VersionTests", dependencies: [
            "Version"
        ])
    ]
)
