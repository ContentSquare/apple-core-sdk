// swift-tools-version:5.9

import PackageDescription

let package = Package(
    name: "ContentsquareCore",
    platforms: [
        .macOS(.v11),
        .iOS(.v13),
        .watchOS(.v6),
        .tvOS(.v13),
        .macCatalyst(.v13),
        .visionOS(.v1),
    ],
    products: [
        .library(name: "ContentsquareCore", targets: [
            "__ContentsquareCore",
        ]),
    ],
    dependencies: [
        .package(url: "https://github.com/ContentSquare/CSSwiftProtobuf.git", exact: "1.33.3"),
    ],
    targets: [
        .target(
            name: "__ContentsquareCore",
            dependencies: [
                "CSSwiftProtobuf",
                "ContentsquareCore",
            ]
        ),
        .binaryTarget(
            name: "ContentsquareCore",
            url: "https://github.com/ContentSquare/apple-core-sdk/releases/download/0.2.1/package.zip",
            checksum: "3605c14693e3c4b7955e27ed4a97dd794bb2caa286162b002300bd877832bac8"
    )
    ],
    swiftLanguageVersions: [.v5]
)
