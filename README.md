# `Version`

Semantic version model for [Swift Package Manager](https://github.com/apple/swift-package-manager)

## `Comparable` Bundle Version

```swift
import Foundation
import Version

if Bundle.main.version > Version(string: "2.0") {
    print(Bundle.main.version.description) // "2.1"
    print(Bundle.main.version.description(verbose: true)) // "2.1.0"
}
```

## Requirements

Targets [iOS](https://developer.apple.com/ios)/[iPadOS](https://developer.apple.com/ipad)/[tvOS ](https://developer.apple.com/tvos) 13, as well as [watchOS](https://developer.apple.com/watchos) 6 and [macOS](https://developer.apple.com/macos) 10.15 Catalina. Written in [Swift](https://developer.apple.com/documentation/swift) 5.2 using the [Foundation](https://developer.apple.com/documentation/foundation) and requires [Xcode](https://developer.apple.com/xcode) 11.4 or newer to build.
