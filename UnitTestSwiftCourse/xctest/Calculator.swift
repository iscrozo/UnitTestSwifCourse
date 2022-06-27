//
//  Calculator.swift
//  UnitTestSwiftCourse
//
//  Created by Camilo Rozo on 26/06/22.
//

import Foundation

class Calculator {
    
    func add(n1: Int, n2: Int) -> Int {
        return n1 + n2
    }
    
    func subtract(n1: Int, n2: Int) -> Int {
        return n1 - n2
    }
    
    func divide(n1: Int, n2: Int) -> Int {
        return n1/n2
    }
    
    func divideByZero(n1: Int, n2: Int) throws -> Int {
        if (n2 == 0) {
            throw SomeError.ZeroError
        }
        return n1/n2
    }
    
}

enum SomeError: Error {
    case ZeroError
}
