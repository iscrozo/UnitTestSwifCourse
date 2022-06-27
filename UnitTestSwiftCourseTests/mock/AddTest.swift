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
    let mockValidNumber = mock(ValidNumber.self)
    
    override func setUp() {
        sut = Add(validBumber: mockValidNumber)
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
}
