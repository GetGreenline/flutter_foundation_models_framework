// swift-tools-version: 5.9

import PackageDescription

let package = Package(
    name: "foundation_models_framework",
    platforms: [
        .iOS("15.0")
    ],
    products: [
        .library(
            name: "foundation-models-framework",
            targets: ["foundation_models_framework"]
        )
    ],
    dependencies: [
        .package(name: "FlutterFramework", path: "../FlutterFramework")
    ],
    targets: [
        .target(
            name: "foundation_models_framework",
            dependencies: [
                .product(name: "FlutterFramework", package: "FlutterFramework")
            ],
            path: "Sources/foundation_models_framework",
            publicHeadersPath: "include",
            linkerSettings: [
                .unsafeFlags(["-weak_framework", "FoundationModels"])
            ]
        )
    ]
)
