//
//  AddTest.swift
//  UnitTestSwiftCourseTests
//
//  Created by Camilo Rozo on 27/06/22.
//

import Foundation
import XCTest
import Mockingbird
@testable import UnitTestSwiftCourse

class AddTest: XCTestCase {
    var sut: Add?
    var mockValidNumber = mock(ValidNumber.self)
    var mockPrint = mock(PrintMessage.self)
    
    override func setUp() {
//        sut = Add(validNumber: mockValidNumber)
        sut = Add(validNumber: mockValidNumber, print: mockPrint)

    }
    
    override func tearDown() {
        sut = nil
    }
    
    func testAdd() {
        given(mockValidNumber.check(number: 3)) ~> true
        given(mockValidNumber.check(number: 4)) ~> true
        sut?.add(a: 3, b: 4)
        verify(mockValidNumber.check(number: 3)).wasCalled()
        verify(mockValidNumber.check(number: 4)).wasCalled()
    }
    
    func testAdd2() {
        given(mockValidNumber.check(number: any())) ~> true
        var checkNumber: Bool = mockValidNumber.check(number: 3)
        
        XCTAssertEqual(true, checkNumber)
        
        given(mockValidNumber.check(number: -3)) ~> false
        checkNumber = mockValidNumber.check(number: -3)
        XCTAssertEqual(false, checkNumber)
    }
    
    /*
     protocolos
         AAA
             arrange    setup()
             act        condicion
             asset      resultado
        GWT
            given       setup()
            when        accion a probar
            then        verificar el resultado
     */
    
    func testAAAAPattern() {
        // Arrange
        given(mockValidNumber.check(number: 3)) ~> true
        given(mockValidNumber.check(number: 4)) ~> true
        // Act
        let result = sut?.add(a: 3, b: 4)
        // Assert
        XCTAssertEqual(7, result)
    }
    
    /*
     pattern GWT
     */
    func testBDDPattern() {
        // Given
        given(mockValidNumber.check(number: 3)) ~> true
        given(mockValidNumber.check(number: 4)) ~> true
        // When
        let result = sut?.add(a: 3, b: 4)
        // Then
        XCTAssertEqual(7, result)
    }
    
    // arguments match
    func testArgumentMatcher() {
        // Given
        given(mockValidNumber.check(number: any())) ~> true
        // When
        let result = sut?.add(a: 3, b: 4)
        // Then
        XCTAssertEqual(7, result)
    }
    
    /*
     No hay Assert para comparar
     */
    func testAddPrint() {
        // Given
        given(mockValidNumber.check(number: any())) ~> true
        // When
        sut?.addPrint(a: 3, b: 3)
        // Then
//        verify(mockValidNumber.check(number: 3)).wasCalled()
        verify(mockValidNumber.check(number: 3)).wasCalled(exactly(2))
        verify(mockValidNumber.check(number: 9)).wasNeverCalled()
        verify(mockValidNumber.check(number: 3)).wasCalled(atLeast(1))
        verify(mockValidNumber.check(number: 1)).wasCalled(atMost(3))
        
        verify(mockPrint.showMessage(numero: 6)).wasCalled()
    }
    
    func testAddPrintShowError() {
        // Given
        given(mockValidNumber.check(number: any())) ~> false
        // When
        sut?.addPrint(a: 3, b: 3)
        // Then
        verify(mockPrint.showError())
        
    }
    
    func testAddReturnNegative() {
        //Given
        given(mockValidNumber.check(number: any())) ~> false
        //When
        let result = sut?.add(a: 3, b: 3)
        // THEN
        XCTAssertEqual(result, 0)
    }
}
