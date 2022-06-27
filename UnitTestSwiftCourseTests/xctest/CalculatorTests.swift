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
    
    override func setUp() {
        print("call setUp() CalculatorTests")
        sut = Calculator()
    }
    
    override func tearDown() {
        print("call tearDown() CalculatorTests")
        sut = nil
    }
    
    func testCalculatorNotNill() {
        print("call testCalculatorNotNill() CalculatorTests")
        XCTAssertNotNil(sut, "SUT deberia set not nill en este punto")
    }
    
    func testAddAssert() {
        print("call testAddAssert() CalculatorTests")
        // 1- arrange
        let resultadoEsperado = 30
        var resultadoActual: Int
        // 2- action
        resultadoActual = sut.add(n1: 10, n2: 20)
        // 3- assert
        XCTAssertEqual(resultadoActual, resultadoEsperado)
        
    }

    
}


/*
 Estandar para los test
    func test_MethodName_StateUnderTest_ExpectedBehaviour
    func test_Add_InputCorrect_OKResult() {
         
    }
 */
