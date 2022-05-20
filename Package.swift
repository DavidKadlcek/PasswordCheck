// swift-tools-version: 5.6
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "Zxcvbn",
    platforms: [
        .iOS(.v13)
    ],
    products: [
        .library(
            name: "Zxcvbn",
            targets: ["Zxcvbn"]),
    ],
    dependencies: [],
    targets: [
        .target(
            name: "Zxcvbn",
            dependencies: [],
            exclude: ["Info.plist"],
            resources: [
                .process("Resources")
            ],
            publicHeadersPath: ".",
            cSettings: [
                .headerSearchPath("Public"),
                .headerSearchPath("Internal")
            ],
            linkerSettings: [
                .linkedFramework("UIKit", .when(platforms: [.iOS]))
            ]
        )
    ]
)