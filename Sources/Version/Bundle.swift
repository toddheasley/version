import Foundation

extension Bundle {
    public var version: Version {
        return Version(object(forInfoDictionaryKey: "CFBundleShortVersionString") as? String)
    }
    
    public var build: String? {
        return object(forInfoDictionaryKey: "CFBundleVersion") as? String
    }
}
