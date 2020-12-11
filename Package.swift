// swift-tools-version:5.2
import PackageDescription

let package = Package(
    name: "SwiftGD",
    products: [
        .library(
            name: "SwiftGD",
            targets: ["SwiftGD"]
        )
    ],
    dependencies: [],
    targets: [
        .systemLibrary(name: "gd", pkgConfig: "gdlib", providers: [.apt(["libgd-dev"]), .brew(["gd"])]),
        .target(name: "SwiftGD", dependencies: ["gd"]),
        .testTarget(name: "SwiftGDTests", dependencies: ["SwiftGD"])
    ]
)
