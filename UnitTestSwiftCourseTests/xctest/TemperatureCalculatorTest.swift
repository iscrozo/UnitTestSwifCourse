//
//  TemperatureCalculatorTest.swift
//  UnitTestSwiftCourseTests
//
//  Created by Camilo Rozo on 27/06/22.
//

import Foundation
import XCTest
@testable import UnitTestSwiftCourse

class TemperatureCalculatorTest: XCTestCase {
    
    var sut: TemperatureCalculator?
    
    override func setUp() {
        sut = TemperatureCalculator()
    }
    
    override func tearDown() {
        sut = nil
    }
    
    func testToFarenheit() {
        let expectedResult: Double = -9.4
        let result = sut?.toFahrenheit(degree: -23)
//        XCTAssertEqual(expectedResult, result, "la temperatura deberia ser igual")
        XCTAssertEqual(expectedResult, result!, accuracy: 0.01)
    }
    
    func testToDegrees() {
        let expectedResult : Double = 25.555
        let result = sut?.toDegrees(farenheit: 78)
        XCTAssertEqual(expectedResult, result!, accuracy: 0.000000000000001)
    }
}
