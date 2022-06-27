//
//  ValidNumber.swift
//  UnitTestSwiftCourse
//
//  Created by Camilo Rozo on 27/06/22.
//

import Foundation

class ValidNumber  {
    func check (number: Int) -> Bool {
        if (number >= 0 && number < 10 ){
            return true
        } else {
            return false
        }
    }
}
