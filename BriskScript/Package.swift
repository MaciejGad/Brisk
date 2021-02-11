// swift-tools-version:5.1
import PackageDescription
var packageDependencies: [Package.Dependency] = []
var targetDependencies: [Target.Dependency] = []

#if os(Linux)
packageDependencies.append(.package(url: "https://github.com/apple/swift-crypto", from: "1.1.3"))
targetDependencies.append("Crypto")
#endif
let package = Package(
    name: "BriskScript",
    platforms: [
        .macOS(.v10_15),
    ],
    dependencies: packageDependencies,
    targets: [
        .target(name: "BriskScript", dependencies: targetDependencies, path: "." )
    ]
)
