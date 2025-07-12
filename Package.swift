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
            url: "https://www.zion.com/products/blukit-framework/packages/BluKit.xcframework.2.0.2.zip",
            checksum: "34f881fe7cf12eaf53b3f1bcaf6fec06969af0881583b375bfc1140edb0e2923"
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
