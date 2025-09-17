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
            url: "https://www.zion.com/packages/blukit-framework/BluKit.xcframework.2.0.6.zip",
            checksum: "43928cbf65056a3ef81a62a4b09743aa6698e9ef678f4b205a7cb86775fc4edc"
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
