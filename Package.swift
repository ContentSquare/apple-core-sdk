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
            url: "https://github.com/ContentSquare/apple-core-sdk/releases/download/0.1.0-rc.31/package.zip",
            checksum: "c7a2d277b8e197c62a32a4a27ed34f7b79af8561da184fca47c7ca5e15a49aff"
    )
    ],
    swiftLanguageVersions: [.v5]
)
