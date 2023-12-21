// swift-tools-version:5.3
import PackageDescription

let bnbPackageVersion: Version = "1.10.0"

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
            url: "https://d2cm7wtcqqw29.cloudfront.net/1.10.0/BNBVisualClip.zip",
            checksum: "ae3a29995ceb47a678ddee29b91b7d6bf89ab685bf604e8d259ca66140c71cbb"
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
