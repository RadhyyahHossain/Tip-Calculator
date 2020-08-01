//
//  ViewController.swift
//  tip_calculator
//
//  Created by Abdullah Ridwan on 7/29/20.
//  Copyright © 2020 Abdullah Ridwan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var TipLabel: UILabel!
    @IBOutlet weak var TotalLabel: UILabel!
    @IBOutlet weak var BillField: UITextField!
    @IBOutlet weak var tipControl: UISegmentedControl!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func OnTap(_ sender: Any) {
    print("Hello")
    view.endEditing(true)
    }

    @IBAction func CalculateTip(_ sender: Any) {
    
        //Get the bill amount
        let billAmount = Double(BillField.text!) ?? 0
    
        
        //Calculate tip and total
        let tipPercentages = [0.05, 0.10, 0.15, 0.20, 0.25]
        
        let tip = billAmount * tipPercentages[tipControl.selectedSegmentIndex]
        let total = billAmount + tip
        
        //Update tip and total labels
        TipLabel.text = String(format: "$%.2f", tip)
        TotalLabel.text = String(format: "$%.2f", total)
    
    }
    
    
    @IBAction func calculateSplit(_ sender: Any) {
        
        print("Hi")
    
    
    
    
    
    }
    
    
    
    
}

