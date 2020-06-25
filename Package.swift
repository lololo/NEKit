// swift-tools-version:5.2
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "NEKit",
    platforms: [.macOS(.v10_13), .iOS(SupportedPlatform.IOSVersion.v12)],
    products: [
        // Products define the executables and libraries produced by a package, and make them visible to other packages.
        .library(
            name: "NEKit",
            targets: ["NEKit"]),
    ],
    dependencies: [
        .package(url: "https://github.com/lololo/MMDB-Swift/tree/master", from:"1.0.0"),
        .package(url: "https://github.com/zhuhaow/tun2socks", from:"0.8.0"),
        .package(url: "https://github.com/robbiehanson/CocoaAsyncSocket", from: "7.6.4"),
        .package(name: "CocoaLumberjack", url: "https://github.com/CocoaLumberjack/CocoaLumberjack.git", from: "3.6.0"),
        .package(name:"Yaml", url: "https://github.com/behrang/YamlSwift.git", from: "3.4.4"),
        .package(url: "https://github.com/zhuhaow/Resolver", from: "0.3.0"),
        .package(name:"Sodium",url: "https://github.com/jedisct1/swift-sodium", from: "0.8.0")
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages which this package depends on.
        .target(name: "NEKit",
                dependencies:["MMDB","tun2socks","CocoaAsyncSocket","CocoaLumberjack","Yaml","Resolver","Sodium"]),
        
        .testTarget(
            name: "MyLibraryTests",
            dependencies: ["MyLibrary"]),
    ]
)
