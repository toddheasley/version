import XCTest
@testable import Version

class VersionTests: XCTestCase {
    func testVerboseDescription() {
        XCTAssertEqual(Version("3.6").description(verbose: true), "3.6.0")
        XCTAssertEqual(Version("3.6").description(verbose: false), "3.6")
        XCTAssertEqual(Version("3.11.2").description(verbose: true), "3.11.2")
        XCTAssertEqual(Version("3.11.2").description(verbose: false), "3.11.2")
        XCTAssertEqual(Version("").description(verbose: true), "1.0.0")
        XCTAssertEqual(Version().description(verbose: false), "1.0")
    }
    
    func testDescriptionInit() {
        XCTAssertEqual(Version("x").major, 1)
        XCTAssertEqual(Version("x").minor, 0)
        XCTAssertEqual(Version("x").patch, 0)
        XCTAssertEqual(Version("0").major, 1)
        XCTAssertEqual(Version("0").minor, 0)
        XCTAssertEqual(Version("0").patch, 0)
        XCTAssertEqual(Version("3.6.x").major, 3)
        XCTAssertEqual(Version("3.6.x").minor, 6)
        XCTAssertEqual(Version("3.6.x").patch, 0)
        XCTAssertEqual(Version("2.11.3").major, 2)
        XCTAssertEqual(Version("2.11.3").minor, 11)
        XCTAssertEqual(Version("2.11.3").patch, 3)
        XCTAssertEqual(Version("2.x.3").major, 2)
        XCTAssertEqual(Version("2.x.3").minor, 0)
        XCTAssertEqual(Version("2.x.3").patch, 3)
        XCTAssertEqual(Version("0.9.1").major, 1)
        XCTAssertEqual(Version("0.9.1").minor, 0)
        XCTAssertEqual(Version("0.9.1").patch, 0)
        XCTAssertEqual(Version().major, 1)
        XCTAssertEqual(Version("").minor, 0)
        XCTAssertEqual(Version("").patch, 0)
    }
    
    // MARK: CustomStringConvertible
    func testDescription() {
        XCTAssertEqual(Version("3.6").description, "3.6")
        XCTAssertEqual(Version("3.11.2").description, "3.11.2")
        XCTAssertEqual(Version("").description, "1.0")
    }
}

extension VersionTests {
    
    // MARK: Comparable
    func testEqual() {
        XCTAssertEqual(Version("3.6"), Version("3.6"))
        XCTAssertNotEqual(Version("3.6.1"), Version("3.6.2"))
        XCTAssertNotEqual(Version("3.6.1"), Version("3.6"))
        XCTAssertNotEqual(Version("3.6"), Version("3.5"))
        XCTAssertNotEqual(Version("3"), Version("2"))
    }
    
    func testLessThan() {
        XCTAssertLessThan(Version("3.6.1"), Version("3.6.2"))
        XCTAssertLessThan(Version("3.6"), Version("3.7"))
        XCTAssertLessThan(Version("2.9"), Version("3"))
    }
}
