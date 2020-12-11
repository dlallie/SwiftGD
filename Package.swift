// swift-tools-version:5.3
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
        .systemLibrary(name: "gd", pkgConfig: "gdlib", providers: [.apt(["libgd-dev"]), .yum(["gd-devel"]), .brew(["gd"])]),
        .target(name: "SwiftGD", dependencies: ["gd"]),
        .testTarget(name: "SwiftGDTests", dependencies: ["SwiftGD"])
    ]
)
