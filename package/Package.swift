// swift-tools-version:4.2
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "adventofcode2018",
    targets: [
        // days
        .target(name: "day1", dependencies: []),
        .target(name: "day2", dependencies: []),
        .target(name: "day3", dependencies: []),
        .target(name: "day4", dependencies: []),
        .target(name: "day5", dependencies: [])
        ]
)


