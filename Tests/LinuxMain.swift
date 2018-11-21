import XCTest
import UInt128Tests

var tests = [XCTestCaseEntry]()
tests += NIODNSTests.allTests()
XCTMain(tests)
