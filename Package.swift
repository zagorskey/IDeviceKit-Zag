// swift-tools-version: 5.9
import PackageDescription

let package = Package(
	name: "IDeviceKit",
	platforms: [
		.iOS(.v15),
		.macOS(.v12),
	],
	products: [
		.library(
			name: "IDevice",
			targets: ["IDevice"]
		),
		.library(
			name: "IDeviceSwift",
			targets: ["IDeviceSwift"]
		),
	],
	targets: [
		.binaryTarget(
			name: "IDevice",
			url: "https://github.com/zagorskey/IDeviceKit-Zag/releases/download/zag-idevice-v0.1.57-ios16.4/IDevice-Zag-v0.1.57-ios16.4.zip",
			checksum: "09ef4045cfc8c3d7526dacff550dd89b12c0f4acba86fcd2509836d4416527f6"
		),
		.target(
			name: "IDeviceSwift",
			dependencies: ["IDevice"]
		),
	]
)
