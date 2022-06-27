//
//  ValidNumberTest.swift
//  UnitTestSwiftCourseTests
//
//  Created by Camilo Rozo on 27/06/22.
//

import Foundation
import XCTest
@testable import UnitTestSwiftCourse

class ValidNumberTest: XCTestCase {
    var sut : ValidNumber?
    
    override func setUp() {
        sut = ValidNumber()
    }
    
    override func tearDown() {
        sut = nil
    }
    
    func testCheck() {
        XCTAssertEqual(true, sut?.check(number: 8) )
    }
    
    func testNegative() {
        XCTAssertEqual(false, sut?.check(number: -4))
    }
    
    func testCheckMore10() {
        XCTAssertEqual(true, sut?.check(number: 10))
    }
}
