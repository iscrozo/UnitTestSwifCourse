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
}
