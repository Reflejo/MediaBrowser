// swift-tools-version:5.3
import PackageDescription

let package = Package(
    name: "MediaBrowser",
    platforms: [
        .iOS(.v13)
    ],
    products: [
        .library(
            name: "MediaBrowser",
            targets: ["MediaBrowser"]
        )
    ],
    dependencies: [
        .package(
            url: "https://github.com/SDWebImage/SDWebImage.git",
            from: "5.0.0"
        ),
        .package(
            url: "https://github.com/luispadron/UICircularProgressRing.git",
            from: "6.5.0"
        )
    ],
    targets: [
        .target(
            name: "MediaBrowser",
            dependencies: ["SDWebImage", "UICircularProgressRing"],
            path: "MediaBrowser",
            exclude: ["Info.plist"]
        )
    ]
)
