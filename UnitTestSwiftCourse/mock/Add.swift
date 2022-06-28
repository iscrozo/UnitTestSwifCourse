//
//  Add.swift
//  UnitTestSwiftCourse
//
//  Created by Camilo Rozo on 27/06/22.
//

import Foundation

class Add {
    
    var validNumber: ValidNumber
    var print: PrintMessage?
    
//    init(validNumber: ValidNumber){
//        self.validNumber = validNumber
//    }
    
    init(validNumber: ValidNumber, print: PrintMessage) {
        self.validNumber = validNumber
        self.print = print
    }
    
    func add(a: Int, b: Int) -> Int{
        if (validNumber.check(number: a) && validNumber.check(number: b)) {
            return a + b
        }
        return 0
    }
    
    func addPrint( a: Int, b: Int) {
        if (validNumber.check(number: a) && validNumber.check(number: b)) {
            print?.showMessage(numero: a+b)
        } else {
            print?.showError()
        }
    }
    
}
