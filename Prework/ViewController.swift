//
//  ViewController.swift
//  Prework
//
//  Created by Yash Hegde on 8/15/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var billAmountTextField: UITextField!
    @IBOutlet weak var tipAmountLabel: UILabel!
    @IBOutlet weak var tipControl: UISegmentedControl!
    @IBOutlet weak var totalLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func calculateTip(_ sender: Any) {
        // Get Bill Amount (from text field)
        let bill = Double(billAmountTextField.text!) ?? 0
        
        // Get Total Tip by multiplying tip * tipPercentage
        let tipPercentages = [0.15, 0.18, 0.2]
        let tip = bill * tipPercentages[tipControl.selectedSegmentIndex]
        let total = bill + tip
        
        // Updating tip amount label
        tipAmountLabel.text = String(format: "$%.2f", tip)
        
        // Updating total amount
        totalLabel.text = String(format: "$%.2f", total)
    }
    
}

