// swift-tools-version:5.2

import PackageDescription

let package = Package(
    name: "XCDLumberjackNSLogger",
    platforms: [
        .iOS(.v8),
        .macOS(.v10_10),
        .tvOS(.v9)
    ],
    products: [
        .library(name: "XCDLumberjackNSLogger", targets: ["XCDLumberjackNSLogger"])
    ],
    dependencies: [
        .package(url: "https://github.com/CocoaLumberjack/CocoaLumberjack.git", from: "2.0.0"),
        .package(url: "https://github.com/fpillet/NSLogger.git", from: "1.7.0")
    ],
    targets: [
        .target(
            name: "XCDLumberjackNSLogger",
            dependencies: ["CocoaLumberjack", "NSLogger"],
            path: "XCDLumberjackNSLogger",
            sources: ["XCDLumberjackNSLogger.m"]
        )
    ]
}
