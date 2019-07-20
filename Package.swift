// swift-tools-version:5.0
import PackageDescription

let package = Package(
    name: "CustomView",
    platforms: [.iOS("10.0")],
    products: [
        .library(name: "CustomView", targets: ["CustomView"])
    ],
    dependencies: [],
    targets: [
        .target(name: "CustomView", dependencies: [], path: "Frameworks/CustomView")
    ]
)