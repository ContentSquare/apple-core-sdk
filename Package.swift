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
            url: "https://github.com/ContentSquare/apple-core-sdk/releases/download/0.1.0-rc.22/package.zip",
            checksum: "575a156cc4dbe9c5002673a111b2d188b72827aa1455ce729a17e202dad5db3c"
    )
    ],
    swiftLanguageVersions: [.v5]
)
