// swift-tools-version:4.0

/**
Test Comment Block
*/

import PackageDescription

let package = Package(
    name: "dealer",
    products: [
        .executable(name: "Dealer", targets: ["Dealer"]),
    ],
    dependencies: [
        .package(url: "https://github.com/apple/example-package-deckofplayingcards.git", from: "3.0.0"),
        .package(url: "https://github.com/test/test.git", .exact("1.2.3")),
        .package(url: "https://github.com/test/test.git", from: "1.1.3-beta.4"),
        .package(url: "https://github.com/test/test.git", .branch("bugfix/issue-121")),
        .package(url: "https://github.com/test/test.git", .revision("04136e97a73b826528dd077c3ebab07d9f8f48e2")),
        .package(path: "../MySwiftLib"),
        .package(
            name: "PlayingCard",
            url: "https://github.com/apple/example-package-playingcard.git",
            from: "3.0.0"
        ),
        .package(url: "https://github.com/test/test.git", "1.1.0"..."1.2.1")
    ],
    targets: [
        .target(
            name: "Dealer",
            dependencies: ["DeckOfPlayingCards"]),
    ]
)

