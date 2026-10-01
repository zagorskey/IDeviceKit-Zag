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
			url: "https://github.com/zagorskey/IDeviceKit-Zag/releases/download/zag-idevice-v0.1.68-ios16.4/IDevice-Zag-v0.1.68-ios16.4.zip",
			checksum: "fbfe2c163e368b396c1824f07443275c31dc070da0c7c0f5759558398c4db1c3"
		),
		.target(
			name: "IDeviceSwift",
			dependencies: ["IDevice"]
		),
	]
)
