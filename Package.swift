// swift-tools-version:5.5
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "Database",
    platforms: [
        .iOS(.v12)
    ],
    products: [
        .library(
            name: "Database",
            targets: ["Database"]),
    ],
    dependencies: [
        .package(url: "https://github.com/realm/realm-swift.git", .upToNextMajor(from: "10.19.0")),
    ],
    targets: [
        .target(
            name: "Database",
            dependencies: [.product(name: "RealmSwift", package: "realm-swift")]),
    ]
)
