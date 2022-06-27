//
//  CalculatorTests.swift
//  UnitTestSwiftCourseTests
//
//  Created by Camilo Rozo on 26/06/22.
//

import Foundation
import XCTest
@testable import UnitTestSwiftCourse

class CalculatorTests: XCTestCase {
    
    var sut: Calculator!
    
    func testCalculatorNotNill() {
        // validar la instancia si es nil o nil
//        XCTAssertNotNil(sut)
//        XCTAssertNil(sut)
        sut = Calculator()
        XCTAssertNotNil(sut)
        
    }
    
    
}
