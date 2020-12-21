//
//  CelsiusConverter.swift
//  Converter
//
//  Created by Briggitte Quintero Martinez on 2020-12-21.
//

import Foundation

class CelsiusConverter{
    
    func degreesFarenheit(degreeCelsius: Int) -> Int {
        
        let degreeF = 1.8 * Double(degreeCelsius) + 32.0
        
        return Int(round(degreeF))
        
    }
}
