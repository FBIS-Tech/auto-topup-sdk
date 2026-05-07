// swift-tools-version: 5.9
import PackageDescription

let package = Package(
    name: "AutoTopup",
    platforms: [.iOS(.v15)],
    products: [
        .library(name: "AutoTopup", targets: ["AutoTopup"]),
    ],
    targets: [
        .target(name: "AutoTopup"),
    ]
)
