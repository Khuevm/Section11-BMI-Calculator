//
//  ResultViewController.swift
//  BMI Calculator
//
//  Created by Khue on 20/07/2022.
//  Copyright © 2022 Angela Yu. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {
    
    @IBOutlet weak var bmiLabel: UILabel!
    @IBOutlet weak var adviceLabel: UILabel!
    
    var bmiValue: Double?
    var advice: String?
    var color: UIColor?

    override func viewDidLoad() {
        super.viewDidLoad()
        
        updateUI()
    }
    
    @IBAction func recalculateButtonDidTap(_ sender: Any) {
        self.dismiss(animated: true)
    }
    
    func updateUI(){
        bmiLabel.text = String(format: "%.1f", bmiValue!)
        adviceLabel.text = advice!.uppercased()
        view.backgroundColor = color
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
