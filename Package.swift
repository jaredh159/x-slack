// swift-tools-version:5.5

import PackageDescription

let package = Package(
  name: "XSlack",
  platforms: [.macOS(.v12)],
  products: [
    .library(name: "XSlack", targets: ["XSlack"]),
  ],
  dependencies: [
    .package(url: "https://github.com/jaredh159/x-http.git", from: "1.0.0"),
  ],
  targets: [
    .target(name: "XSlack", dependencies: [
      .product(name: "XHttp", package: "x-http"),
    ]),
    .testTarget(name: "XSlackTests", dependencies: ["XSlack"]),
  ]
)
