import XCTest

#if !os(macOS)
public func allTests() -> [XCTestCaseEntry] {
    return {
        var allTests = [
            testCase(SystemTests.allTests),
            testCase(BaseTypeTests.allTests),
            testCase(FixedWidthIntegerTests.allTests),
            testCase(BinaryIntegerTests.allTests),
            testCase(NumericTests.allTests),
            testCase(EquatableTests.allTests),
            testCase(ExpressibleByIntegerLiteralTests.allTests),
            testCase(CustomStringConvertibleTests.allTests),
            testCase(CustomDebugStringConvertible.allTests),
            testCase(ComparableTests.allTests),
            testCase(ExpressibleByStringLiteralTests.allTests),
            testCase(CodableTests.allTests),
            testCase(FloatingPointInterworkingTests.allTests)
        ]
        #if !swift(>=4.0)
        allTests.append(testCase(DeprecatedAPITests.allTests))
        #endif
        return allTests
    }()
}
#endif

extension SystemTests {
    static var allTests = [
        ("testCanReceiveAnInt", testCanReceiveAnInt),
        ("testCanBeSentToAnInt", testCanBeSentToAnInt),
        ("testIntegerLiteralInput", testIntegerLiteralInput),
        ("testCanReceiveAString", testCanReceiveAString),
        ("testStringLiteralInput", testStringLiteralInput),
        ("testCanBeSentToAFloat", testCanBeSentToAFloat)
    ]
}

extension BaseTypeTests {
    static var allTests = [
        ("testSignificantBitsReturnsProperBitCount", testSignificantBitsReturnsProperBitCount),
        ("testDesignatedInitializerProperlySetsInternalValue", testDesignatedInitializerProperlySetsInternalValue),
        ("testDefaultInitializerSetsUpperAndLowerBitsToZero", testDefaultInitializerSetsUpperAndLowerBitsToZero),
        ("testInitWithUInt128", testInitWithUInt128),
        ("testStringInitializerWithEmptyString", testStringInitializerWithEmptyString),
        ("testStringInitializerWithSupportedNumberFormats", testStringInitializerWithSupportedNumberFormats)
    ]
}

extension FixedWidthIntegerTests {
    static var allTests = [
        ("testNonzeroBitCount", testNonzeroBitCount),
        ("testLeadingZeroBitCount", testLeadingZeroBitCount),
        ("testBigEndianProperty", testBigEndianProperty),
        ("testBigEndianInitializer", testBigEndianInitializer),
        ("testLittleEndianProperty", testLittleEndianProperty),
        ("testLittleEndianInitializer", testLittleEndianInitializer),
        ("testByteSwappedProperty", testByteSwappedProperty),
        ("testInitWithTruncatingBits", testInitWithTruncatingBits),
        ("testAddingReportingOverflow", testAddingReportingOverflow),
        ("testSubtractingReportingOverflow", testSubtractingReportingOverflow),
        ("testMultipliedReportingOverflow", testMultipliedReportingOverflow),
        ("testMultipliedFullWidth", testMultipliedFullWidth),
        ("testDividedReportingOverflow", testDividedReportingOverflow),
        ("testBitFromDoubleWidth", testBitFromDoubleWidth),
        ("testDividingFullWidth", testDividingFullWidth),
        ("testRemainderReportingOverflow", testRemainderReportingOverflow),
        ("testQuotientAndRemainder", testQuotientAndRemainder)
    ]
}

extension BinaryIntegerTests {
    static var allTests = { () -> [(String, (BinaryIntegerTests) -> () -> ())] in
        var allTests = [
            ("testBitWidthEquals128", testBitWidthEquals128),
            ("testTrailingZeroBitCount", testTrailingZeroBitCount),
            ("testInitFailableFloatingPointExactlyExpectedSuccesses", testInitFailableFloatingPointExactlyExpectedSuccesses),
            ("testInitFailableFloatingPointExactlyExpectedFailures", testInitFailableFloatingPointExactlyExpectedFailures),
            ("testDivideOperator", testDivideOperator),
            ("testDivideEqualOperator", testDivideEqualOperator),
            ("testModuloOperator", testModuloOperator),
            ("testModuloEqualOperator", testModuloEqualOperator),
            ("testBooleanAndEqualOperator", testBooleanAndEqualOperator),
            ("testBooleanOrEqualOperator", testBooleanOrEqualOperator),
            ("testBooleanXorEqualOperator", testBooleanXorEqualOperator),
            ("testMaskingRightShiftEqualOperatorStandardCases", testMaskingRightShiftEqualOperatorStandardCases),
            ("testMaskingRightShiftEqualOperatorEdgeCases", testMaskingRightShiftEqualOperatorEdgeCases),
            ("testMaskingLeftShiftEqualOperatorStandardCases", testMaskingLeftShiftEqualOperatorStandardCases),
            ("testMaskingLeftShiftEqualOperatorEdgeCases", testMaskingLeftShiftEqualOperatorEdgeCases)
        ]
        #if !(arch(arm) || arch(i386))
        allTests.append(("testInitFloatingPoint", testInitFloatingPoint))
        allTests.append(("test_word", test_word))
        #endif
        return allTests
    }()
}

extension NumericTests {
    static var allTests = [
        ("testAdditionOperator", testAdditionOperator),
        ("testAdditionEqualOperator", testAdditionEqualOperator),
        ("testSubtractionOperator", testSubtractionOperator),
        ("testSubtractionEqualOperator", testSubtractionEqualOperator),
        ("testMultiplicationOperator", testMultiplicationOperator),
        ("testMultiplicationEqualOperator", testMultiplicationEqualOperator)
    ]
}

extension EquatableTests {
    static var allTests = [
        ("testBooleanEqualsOperator", testBooleanEqualsOperator)
    ]
}

extension ExpressibleByIntegerLiteralTests {
    static var allTests = [
        ("testInitWithIntegerLiteral", testInitWithIntegerLiteral)
    ]
}

extension CustomStringConvertibleTests {
    static var allTests = [
        ("testDescriptionProperty", testDescriptionProperty),
        ("testStringDescribingInitializer", testStringDescribingInitializer),
        ("testStringUInt128InitializerLowercased", testStringUInt128InitializerLowercased),
        ("testStringUInt128InitializerUppercased", testStringUInt128InitializerUppercased)
    ]
}

extension CustomDebugStringConvertible {
    static var allTests = [
        ("testDebugDescriptionProperty", testDebugDescriptionProperty),
        ("testStringReflectingInitializer", testStringReflectingInitializer)
    ]
}

extension ComparableTests {
    static var allTests = [
        ("testLessThanOperator", testLessThanOperator)
    ]
}

extension ExpressibleByStringLiteralTests {
    static var allTests = [
        ("testInitWithStringLiteral", testInitWithStringLiteral),
        ("testEvaluatedWithStringLiteral", testEvaluatedWithStringLiteral)
    ]
}

extension CodableTests {
    static var allTests = [
        ("testCodable", testCodable)
    ]
}

#if !swift(>=4.0)
extension DeprecatedAPITests {
    static var allTests = [
        ("testFromUnparsedString", testFromUnparsedString)
    ]
}
#endif

extension FloatingPointInterworkingTests {
    static var allTests = [
        ("testNonFailableInitializer", testNonFailableInitializer),
        ("testFailableInitializer", testFailableInitializer),
        ("testSignBitIndex", testSignBitIndex)
    ]
}
