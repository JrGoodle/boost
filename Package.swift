// swift-tools-version:5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.
import PackageDescription

let version = "1.84.0"
let moduleName = "boost"
let checksum = "674de701533107501b8cb0d980328804d2cfb9d301e0da4bc9522d8752674030"

let package = Package(
    name: moduleName,
    platforms: [
        .iOS(.v11),.macOS(.v11),.visionOS(.v1)
    ],
    products: [
        .library(
            name: moduleName,
            targets: [moduleName]
        )
    ],
    targets: [
        .binaryTarget(
            name: moduleName,
            url: "https://github.com/JrGoodle/boost/releases/download/\(version)/\(moduleName).xcframework.zip",
            checksum: checksum
        )
    ]
)
