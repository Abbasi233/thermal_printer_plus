// swift-tools-version: 5.9

import PackageDescription

let package = Package(
    name: "thermal_printer_plus",
    platforms: [
        .iOS("12.0")
    ],
    products: [
        .library(name: "thermal-printer-plus", type: .static, targets: ["thermal_printer_plus"])
    ],
    dependencies: [
        .package(name: "FlutterFramework", path: "../FlutterFramework")
    ],
    targets: [
        .target(
            name: "thermal_printer_plus",
            dependencies: [
                .product(name: "FlutterFramework", package: "FlutterFramework"),
                "thermal_printer_plus_gsdk"
            ],
            exclude: [
                "SwiftThermalPrinterPlugin.swift"
            ],
            cSettings: [
                .headerSearchPath("include/thermal_printer_plus")
            ],
            linkerSettings: [
                .linkedFramework("CoreBluetooth"),
                .linkedFramework("CoreGraphics"),
                .linkedFramework("UIKit"),
                .linkedFramework("CFNetwork"),
                .linkedFramework("SystemConfiguration"),
                .linkedFramework("CoreTelephony"),
                .linkedFramework("WebKit"),
                .unsafeFlags(["-ObjC"])
            ]
        ),
        .binaryTarget(
            name: "thermal_printer_plus_gsdk",
            path: "Vendor/GSDK.xcframework"
        )
    ]
)
