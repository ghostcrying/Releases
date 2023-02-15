// swift-tools-version:5.1

/**
 *  Releases
 *  Copyright (c) John Sundell 2017
 *  Licensed under the MIT license. See LICENSE file.
 */

import PackageDescription

let package = Package(
    name: "Releases",
    products: [
        .library(name: "Releases", targets: ["Releases"])
    ],
    dependencies: [
        .package(url: "https://github.com/ghostcrying/ShellOut.git", from: "4.0.1"),
        .package(url: "https://github.com/ghostcrying/Require.git", from: "4.0.1")
    ],
    targets: [
        .target(
            name: "Releases",
            dependencies: ["ShellOut", "Require"],
            path: "Sources"
        ),
        .testTarget(
            name: "ReleasesTests",
            dependencies: ["Releases"]
        )
    ]
)
