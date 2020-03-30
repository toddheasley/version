import XCTest
@testable import Version

class BundleTests: XCTestCase {
    
}

extension BundleTests {
    func testVersion() {
        XCTAssertGreaterThan(Bundle(for: Bundle.self).version, Version())
    }
    
    func testBuild() {
        XCTAssertNotNil(Bundle(for: Bundle.self).build)
    }
}
