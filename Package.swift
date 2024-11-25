// swift-tools-version:5.7

import PackageDescription

let package = Package(
    name: "ContentsquareCore",
    platforms: [
        .macOS(.v11),
        .iOS(.v13),
        .watchOS(.v5),
        .tvOS(.v13),
    ],
    products: [
        .library(name: "ContentsquareCore", targets: [
            "__ContentsquareCore",
        ]),
    ],
    dependencies: [
        .package(url: "https://github.com/ContentSquare/CSSwiftProtobuf.git", exact: "1.28.2"),
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
            url: "https://github.com/ContentSquare/apple-core-sdk/releases/download/0.1.0-rc.15/package.zip",
            checksum: "dc4143fd516d1463f528262772f2448df63efc6011e0226092891d2cd4fcb452"
    )
    ],
    swiftLanguageVersions: [.v5]
)
