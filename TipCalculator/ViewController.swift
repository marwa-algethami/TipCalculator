//
//  ViewController.swift
//  TipCalculator
//
//  Created by Marwa Algethami on 27/07/1440 AH.
//  Copyright © 1440 codepath. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var billField: UITextField!
    @IBOutlet weak var tipLabel: UILabel!
    @IBOutlet weak var totalLabel: UILabel!
    
    @IBOutlet weak var tipController: UISegmentedControl!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func onTap(_ sender: Any) {
        view.endEditing(true) //keyboard dismiss
    }
    
    @IBAction func calculateTip(_ sender: Any) {
        
        //get the bill amount
        let Bill = Double(billField.text!) ?? 0
        
        
        //calculate the tip and total
        let tipPercentage = [0.1 , 0.18 ,0.2]
        
        
        let tip = Bill * tipPercentage[tipController.selectedSegmentIndex]
        let total = Bill + tip
        
        // update the tip and total
        tipLabel.text = String(format: "$%.2f", tip)
        totalLabel.text = String(format: "$%.2f",total)
    }
}

