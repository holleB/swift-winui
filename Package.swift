// swift-tools-version: 5.10

import PackageDescription

let package = Package(
    name: "swift-winui",
    products: [
        .library(name: "WinUI", type: .dynamic, targets: ["WinUI"]),
    ],
    dependencies: [
        .package(url: "https://github.com/holleB/swift-cwinrt", branch: "main"),
        .package(url: "https://github.com/holleB/swift-uwp", branch: "main"),
        .package(url: "https://github.com/holleB/swift-windowsappsdk", branch: "main"),
        .package(url: "https://github.com/holleB/swift-windowsfoundation", branch: "main"),
    ],
    targets: [
        .target(
            name: "WinUI",
            dependencies: [
                .product(name: "CWinRT", package: "swift-cwinrt"),
                .product(name: "UWP", package: "swift-uwp"),
                .product(name: "WinAppSDK", package: "swift-windowsappsdk"),
                .product(name: "WindowsFoundation", package: "swift-windowsfoundation"),
            ]
        )
    ]
)
