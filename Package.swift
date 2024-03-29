// swift-tools-version:5.3
import PackageDescription

let bnbPackageVersion: Version = "1.11.1-1-ge047381c9"

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
            url: "https://d2cm7wtcqqw29.cloudfront.net/1.11.1-1-ge047381c9/BNBVisualClip.zip",
            checksum: "074cb1dada4b024459c49219430403ea8868a00424cc7f9326fadab49e3646be"
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
