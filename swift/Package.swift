// swift-tools-version: 5.3
import PackageDescription

let package = Package(
    name: "IDevice",
    platforms: [
        .iOS(.v12),
        .macOS(.v11),
    ],
    products: [
        .library(
            name: "IDevice",
            targets: ["IDevice"]
        ),
        .library(
            name: "plist",
            targets: ["plist"]
        ),
    ],
    targets: [
        .binaryTarget(
            name: "IDevice",
            url: "https://github.com/zagorskey/IDeviceKit-Zag/releases/download/zag-idevice-v0.1.68-ios16.4/IDevice-Zag-v0.1.68-ios16.4.zip",
            checksum: "fbfe2c163e368b396c1824f07443275c31dc070da0c7c0f5759558398c4db1c3"
        ),
        .binaryTarget(
            name: "plist",
            path: "plist.xcframework"
        ),
    ]
)
