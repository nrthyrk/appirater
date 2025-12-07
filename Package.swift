// swift-tools-version:5.9
import PackageDescription

let package = Package(
    name: "Appirater",
    defaultLocalization: "ar",
    platforms: [
        .iOS(.v15)
    ],
    products: [
        .library(
            name: "Appirater",
            targets: ["Appirater"])
    ],
    targets: [
        .target(
            name: "Appirater",
            path: "Sources/Appirater",
            publicHeadersPath: "include",
            cSettings: [
                .headerSearchPath("."),  // Ensures that headers in the main directory are found
                .headerSearchPath("include")  // Ensures that public headers in the include directory are found
            ]
        ),
        .target(name: "Test", dependencies: ["Appirater"])
    ]
)
