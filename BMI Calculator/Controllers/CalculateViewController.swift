//
//  ViewController.swift
//  BMI Calculator
//
//  Created by Angela Yu on 21/08/2019.
//  Copyright © 2019 Angela Yu. All rights reserved.
//

import UIKit

class CalculateViewController: UIViewController {
    // MARK: - IBOutlet
    @IBOutlet weak var weightValueLabel: UILabel!
    @IBOutlet weak var heightValueLabel: UILabel!
    
    // MARK: - Variants
    var height = 1.5
    var weight = 100
    var calculatorBrain = CalculatorBrain()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    // MARK: - IBAction
    @IBAction func heightSliderValueChanged(_ sender: UISlider) {
        height = Double(String(format: "%.2f", sender.value))!
        heightValueLabel.text = "\(height)m"
        
    }
    
    @IBAction func weightSliderValueChanged(_ sender: UISlider) {
        weight = Int(sender.value)
        weightValueLabel.text = "\(weight)Kg"
    }
    
    @IBAction func calculateButtonDidTap(_ sender: UIButton) {
        calculatorBrain.calculateBMI(height: height, weight: Double(weight))
        
//        Navigate multi-screen by code
//        let storyboard = UIStoryboard(name: "Main", bundle: nil)
//
//        let resultVC = storyboard.instantiateViewController(identifier: "ResultViewController") as ResultViewController
//        resultVC.bmiValue = bmi
//        resultVC.modalPresentationStyle = .fullScreen
//
//        self.present(resultVC, animated: true, completion: nil)
        
//        Navigate multi-screen
        self.performSegue(withIdentifier: "goToResult", sender: self)
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToResult" {
            let resultVC = segue.destination as! ResultViewController
            resultVC.bmiValue = calculatorBrain.getBMIValue()
            resultVC.advice = calculatorBrain.getBMIAdvide()
            resultVC.color = calculatorBrain.getBMIColor()
        }
    }
}

