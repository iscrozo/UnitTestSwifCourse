//
//  TemperatureCalculator.swift
//  UnitTestSwiftCourse
//
//  Created by Camilo Rozo on 27/06/22.
//

import Foundation

class TemperatureCalculator {
    func toFahrenheit(degree: Double) -> Double {
        return degree * 9 / 5 + 32
    }
    
    func toDegrees(farenheit: Double ) -> Double {
        return (farenheit - 32) *  5 / 9
    }
}
