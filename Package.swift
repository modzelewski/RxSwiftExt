// swift-tools-version:5.0
import PackageDescription

let package = Package(
    name: "RxSwiftExt",
    platforms: [
      .macOS(.v10_11), .iOS(.v8), .tvOS(.v9)
    ],
    products: [
        .library(name: "RxSwiftExt", targets: ["RxSwiftExt"]),
    ],
    dependencies: [
        .package(url: "https://github.com/ReactiveX/RxSwift.git", .upToNextMajor(from: "4.5.0"))
    ],
    targets: [
        .target(
            name: "RxSwiftExt",
            dependencies: ["RxSwift", "RxCocoa"],
            path: "Source"
        ),
        .testTarget(
            name: "RxSwiftExtTests",
            dependencies: ["RxSwiftExt", "RxTest"],
            path: "Tests"
        ),
    ],
    swiftLanguageVersions: [.v5]
)
