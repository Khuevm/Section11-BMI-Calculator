//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by Khue on 22/07/2022.
//  Copyright © 2022 Angela Yu. All rights reserved.
//

import Foundation
import UIKit

struct CalculatorBrain {
    var bmi: BMI?
    
    mutating func calculateBMI(height: Double, weight: Double) {
        let bmiValue = weight/(height*height)
        
        switch bmiValue {
        case ..<18.5:
            bmi = BMI(value: bmiValue, advice: "Eat more Snacks", color: .blue)
        case ...24.9:
            bmi = BMI(value: bmiValue, advice: "Fit as a fiddle", color: .green)
        default:
            bmi = BMI(value: bmiValue, advice: "Eat less Snacks", color: .orange)
        }
        
        
    }
    
    func getBMIValue() -> Double {
        return bmi?.value ?? 0.0
    }
    
    func getBMIAdvide() -> String {
        return bmi?.advice ?? "No advice"
    }
    
    func getBMIColor() -> UIColor {
        return bmi?.color ?? .blue
    }
}
