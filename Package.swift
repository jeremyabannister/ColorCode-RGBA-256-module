// swift-tools-version: 5.8

///
import PackageDescription

///
let package = Package(
    name: "ColorCode-RGBA-256-module",
    products: [
        .library(
            name: "ColorCode-RGBA-256-module",
            targets: ["ColorCode-RGBA-256-module"]
        ),
    ],
    dependencies: [
        
        ///
        .package(
            url: "https://github.com/jeremyabannister/Testable-module",
            "0.1.0" ..< "0.2.0"
        ),
    ],
    targets: [
        .target(
            name: "ColorCode-RGBA-256-module",
            dependencies: []
        ),
        .testTarget(
            name: "ColorCode-RGBA-256-module-tests",
            dependencies: [
                "ColorCode-RGBA-256-module",
                "Testable-module",
            ]
        ),
    ]
)
