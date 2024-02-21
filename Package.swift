// swift-tools-version:5.3
import PackageDescription

let bnbPackageVersion: Version = "1.11.0-3-gb365c1950"

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
            url: "https://d2cm7wtcqqw29.cloudfront.net/1.11.0-3-gb365c1950/BNBVisualClip.zip",
            checksum: "7ad01a7263482fade1047af50b5758c37294f80ae54a15e2b19eb64a5a957f2d"
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
