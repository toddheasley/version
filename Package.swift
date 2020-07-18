// swift-tools-version:5.3
import PackageDescription

let package = Package(name: "version", platforms: [
    .macOS(.v10_15),
    .iOS(.v13),
    .watchOS(.v6),
    .tvOS(.v13)
], products: [
    .library(name: "Version", targets: [
        "Version"
    ])
], targets: [
    .target(name: "Version", dependencies: []),
    .testTarget(name: "VersionTests", dependencies: [
        "Version"
    ])
])
