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
        sut = Calculator()
        XCTAssertNotNil(sut, "SUT deberia set not nill en este punto")
    }
    

    
}


/*
 Estandar para los test
    func test_MethodName_StateUnderTest_ExpectedBehaviour
    func test_Add_InputCorrect_OKResult() {
         
    }
 */
