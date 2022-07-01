// swift-tools-version: 5.6
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "TheLibrary",
    platforms: [.iOS(.v9), .macOS(.v10_10), .tvOS(.v9), .watchOS(.v6)],
    products: [
        .library(
            name: "TheLibrary",
            targets: ["TheLibrary"]),
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        // .package(url: /* package url */, from: "1.0.0"),
        .package(url: "https://github.com/ccgus/fmdb", from: "2.7.6")
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .target(
            name: "TheLibrary",
            dependencies: [
                .product(name: "FMDB", package: "fmdb")
            ],
            sources: ["internal"],
            publicHeadersPath: "include",
            cSettings: [
                .headerSearchPath("internal")
            ]
        ),
        .testTarget(
            name: "TheLibraryTests",
            dependencies: [
               "TheLibrary",
            ],
            cSettings: [
                .headerSearchPath("../../Sources/TheLibrary/internal"),
            ]
        )
    ]
)
