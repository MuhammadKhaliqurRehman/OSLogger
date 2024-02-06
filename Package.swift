// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "OSLogger",
    platforms: [.iOS(.v17), .watchOS(.v9), .macOS(.v14), .macCatalyst(.v17), .tvOS(.v17)],
    products: [
        .library(
            name: "OSLogger",
            targets: ["OSLogger"]),
    ],
    targets: [
        .target(name: "OSLogger"),
    ]
)
