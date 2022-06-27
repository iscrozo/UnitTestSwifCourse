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
    
    func testAddBDD() {
        print("call testAddBDD() CalculatorTests")
        // 1- Given
        let resultadoEsperado = 30
        var resultadoActual: Int
        // 2- When
        resultadoActual = sut.add(n1: 10, n2: 20)
        // 3- Then
        XCTAssertEqual(resultadoActual, resultadoEsperado)
    }
    
    func testAdd() {
        print("call testAdd() CalculatorTests")
        // 3- Then
        XCTAssertEqual(sut.add(n1: 10, n2: 20), 30)
    }

    func testAssertTypes() {
        print("call testAssertTypes() CalculatorTests")
        XCTAssertTrue( 1 == 1 )
        XCTAssertFalse( 1 == 2 )
        XCTAssertNil( nil )
        XCTAssertNotNil( sut )
        XCTAssertEqual("camilo", "camilo", "equal names")
        XCTAssertGreaterThan(10, 1, "Necesito que sea mayor")
    }
    
    func testDivide(){
        print("call testDivide() CalculatorTests")
        XCTAssertEqual(2, sut.divide(n1: 4, n2: 2), "Tiene que ser la mitad")
    }
    
    func testDivideByZero(){
        print("call testDivideByZero() CalculatorTests")
        XCTAssertEqual(2, try sut.divideByZero(n1: 4, n2: 2))
        XCTAssertThrowsError(try sut.divideByZero(n1: 4, n2: 0))
    }
    
    func testDisable() {
        print("call testDisable() CalculatorTests")
    }
}


/*
 Estandar para los test
    func test_MethodName_StateUnderTest_ExpectedBehaviour
    func test_Add_InputCorrect_OKResult() {
         
    }
 */
