// swift-tools-version:5.3
import PackageDescription

let package = Package(
	name: "Zxcvbn",
	platforms: [
		.iOS(.v8)
	],
	products: [
		.library(
			name: "Zxcvbn",
			targets: ["Zxcvbn"]
		)
	],
	targets: [
		.target(
			name: "Zxcvbn",
			path: "./Zxcvbn"
		)
	]
)