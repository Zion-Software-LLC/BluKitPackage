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
            url: "https://www.zion.com/products/blukit-framework/packages/BluKit.xcframework.2.0.3.zip",
            checksum: "e76ae5a8fb80713b346f17553c3ee833a884ec5f56cfd136a3b9de79a9186d4f"
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
