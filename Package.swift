// swift-tools-version:5.3
import PackageDescription

let bnbPackageVersion: Version = "1.11.1-70-g2e0f1ab74e"

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
            url: "None",
            checksum: "c7cbea624dc007bd2ac842f819a8040057f9ed6e5ce95fd58ff4548108523b2c"
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
