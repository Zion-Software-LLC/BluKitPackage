// swift-tools-version:5.5
import PackageDescription

// Bundle up BluKit.xcframework as a Swift Package suitable for integration with Swift Package Manager

let package = Package(
    name: "BluKit",
    platforms: [
        .iOS(.v13),
        .macOS(.v10_15),
        .macCatalyst(.v13)
    ],
    products: [
        .library(
            name: "BluKit",
            targets: ["BluKit"]
        )
    ],
    targets: [
        .binaryTarget(
            name: "BluKit",
            url: "https://www.zion.com/packages/blukit-framework/BluKit.xcframework.2.0.5.zip",
            checksum: "ba982a7f86dc9df72821ba3466ab0eff7a2d74cc3cd65af393a026e37edb84ad"
        ),
        // Add a fake target to satisfy the swift build system
        // Add a dependency to the .binaryTarget
        // Add the expected Sources folder structure: Sources/BluKitPackage/
        // Add a fake Swift source: Sources/BluKitPackage/BluKitPackage.swift
        .target(
            name: "BluKitPackage",
            dependencies: ["BluKit"]
        )
    ]
)
