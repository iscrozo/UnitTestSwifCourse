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
}
