//
// Copyright (c) 2026 Coderkube Technologies - OnboardKit. All rights reserved.
//

// swift-tools-version: 6.2
import PackageDescription

let package = Package(
  name: "OnboardKit",
  defaultLocalization: "en",
  platforms: [
    .iOS(.v15),
    .macOS(.v12)
  ],
  products: [
    .library(
      name: "OnboardKit",
      targets: ["OnboardKit"]
    )
  ],
  dependencies: [
    // No external dependencies for OnboardKit
  ],
  targets: [
    .target(
      name: "OnboardKit",
      dependencies: []
    ),
    .testTarget(
      name: "OnboardKitTests",
      dependencies: ["OnboardKit"]
    )
  ]
)
