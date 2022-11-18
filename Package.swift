// swift-tools-version: 5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "Parsecco",
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "Parsecco",
            targets: ["Parsecco"]),
        .library(
            name: "ParseccoMarkdown",
            targets: ["ParseccoMarkdown"]),
        .library(
            name: "ParseccoCSV",
            targets: ["ParseccoCSV"]),
        .library(
            name: "ParseccoJSON",
            targets: ["ParseccoJSON"]),
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        // .package(url: /* package url */, from: "1.0.0"),
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .target(
            name: "Parsecco",
            dependencies: []),
        .target(
            name: "ParseccoMarkdown",
            dependencies: ["Parsecco"]),
        .target(
            name: "ParseccoCSV",
            dependencies: ["Parsecco"]),
        .target(
            name: "ParseccoJSON",
            dependencies: ["Parsecco"]),
        .testTarget(
            name: "ParseccoTests",
            dependencies: ["Parsecco"]),
        .testTarget(
            name: "ParseccoMarkdownTests",
            dependencies: ["Parsecco", "ParseccoMarkdown"]),
        .testTarget(
            name: "ParseccoCSVTests",
            dependencies: ["Parsecco", "ParseccoCSV"]),
        .testTarget(
            name: "ParseccoJSONTests",
            dependencies: ["Parsecco", "ParseccoJSON"]),
    ]
)
