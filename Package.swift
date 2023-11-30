// swift-tools-version:5.3
import PackageDescription

let bnbPackageVersion: Version = "1.9.1-69-g431d04ab4a"

let package = Package(
    name: "BNBVisualClip",
    platforms: [
        .iOS(.v13)
    ],
    products: [
        .library(
            name: "BNBVisualClip",
            targets: [
                "BNBVisualClip",
                "BNBVisualClip_BNBSdkCore"
            ]
        ),
    ],
    dependencies: [
        .package(
            url: "https://github.com/sdk-banuba/BNBSdkCore.git",
            .exact(bnbPackageVersion)
        ),
    ],
    targets: [
        .binaryTarget(
            name: "BNBVisualClip",
            url: "https://d2cm7wtcqqw29.cloudfront.net/1.9.1-69-g431d04ab4a/BNBVisualClip.zip",
            checksum: "55f8a283c65966787827192b6436c35e74d9acf9e83d19382eab38b93b3f2568"
        ),
        .target(
            name: "BNBVisualClip_BNBSdkCore",
            dependencies: [
                .product(
                    name: "BNBSdkCore",
                    package: "BNBSdkCore"
                ),
            ]
        ),
    ]
)
