import Foundation

public struct Version: CustomStringConvertible {
    public let major: Int
    public let minor: Int
    public let patch: Int
    
    public func description(verbose: Bool) -> String {
        return (patch > 0 || verbose) ? "\(major).\(minor).\(patch)" : "\(major).\(minor)"
    }
    
    public init(_ description: String? = nil) {
        let components: [Int] = (description ?? "").components(separatedBy: ".").map { component in
            return Int(component) ?? 0
        }
        major = max(components[0], 1) // Enforce minimum version 1.0
        minor = (components.count > 1 && components[0] != 0) ? max(components[1], 0) : 0
        patch = (components.count > 2 && components[0] != 0) ? max(components[2], 0) : 0
    }
    
    // MARK: CustomStringConvertible
    public var description: String {
        return description(verbose: false)
    }
}

extension Version: Comparable {
    
    // MARK: Comparable
    public static func ==(x: Version, y: Version) -> Bool {
        return (x.major == y.major) && (x.minor == y.minor) && (x.patch == y.patch)
    }
    
    public static func <(x: Version, y: Version) -> Bool {
        return (x.major < y.major) || (x.major == y.major && x.minor < y.minor) || (x.major == y.major && x.minor == y.minor && x.patch < y.patch)
    }
}
