// swift-tools-version:5.3
import PackageDescription

let bnbPackageVersion: Version = "1.11.1-33-gdff1aad66"

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
            url: "https://d2cm7wtcqqw29.cloudfront.net/1.11.1-33-gdff1aad66/BNBVisualClip.zip",
            checksum: "382ca4dea8bab16604e2822c134c36b9aff880c03b899164ace2f6d718e17af9"
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
