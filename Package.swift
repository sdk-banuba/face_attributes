// swift-tools-version:5.3
import PackageDescription

let bnbPackageVersion: Version = "1.12.1-39-g03310be29"

let package = Package(
    name: "face_attributes",
    platforms: [
        .iOS(.v13)
    ],
    products: [
        .library(
            name: "face_attributes",
            targets: [
                "face_attributes",
                "face_attributes_sdk_core",
                "face_attributes_face_tracker",
                "face_attributes_skin",
                "face_attributes_hair",
                "face_attributes_eyes"
            ]
        ),
    ],
    dependencies: [
        .package(
            url: "https://github.com/sdk-banuba/sdk_core.git",
            .exact(bnbPackageVersion)
        ),
        .package(
            url: "https://github.com/sdk-banuba/face_tracker.git",
            .exact(bnbPackageVersion)
        ),
        .package(
            url: "https://github.com/sdk-banuba/skin.git",
            .exact(bnbPackageVersion)
        ),
        .package(
            url: "https://github.com/sdk-banuba/hair.git",
            .exact(bnbPackageVersion)
        ),
        .package(
            url: "https://github.com/sdk-banuba/eyes.git",
            .exact(bnbPackageVersion)
        ),
    ],
    targets: [
        .binaryTarget(
            name: "face_attributes",
            url: "https://d2cm7wtcqqw29.cloudfront.net/1.12.1-39-g03310be29/face_attributes.zip",
            checksum: "4777c7829fb3d93853c13a637200a630c17f6c3049457c05d69aba3a4a763252"
        ),
        .target(
            name: "face_attributes_sdk_core",
            dependencies: [
                .product(
                    name: "sdk_core",
                    package: "sdk_core"
                ),
            ]
        ),
        .target(
            name: "face_attributes_face_tracker",
            dependencies: [
                .product(
                    name: "face_tracker",
                    package: "face_tracker"
                ),
            ]
        ),
        .target(
            name: "face_attributes_skin",
            dependencies: [
                .product(
                    name: "skin",
                    package: "skin"
                ),
            ]
        ),
        .target(
            name: "face_attributes_hair",
            dependencies: [
                .product(
                    name: "hair",
                    package: "hair"
                ),
            ]
        ),
        .target(
            name: "face_attributes_eyes",
            dependencies: [
                .product(
                    name: "eyes",
                    package: "eyes"
                ),
            ]
        ),
    ]
)
