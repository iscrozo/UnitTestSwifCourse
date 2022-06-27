//
//  Add.swift
//  UnitTestSwiftCourse
//
//  Created by Camilo Rozo on 27/06/22.
//

import Foundation

class Add {
    var validNumber: ValidNumber
    init(validBumber: ValidNumber){
        self.validNumber = validBumber
    }
    
    func add(a: Int, b: Int) -> Int{
        if (validNumber.check(number: a) && validNumber.check(number: b)) {
            return a + b
        }
        return 0
    }
}
