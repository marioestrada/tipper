//
//  ViewController.swift
//  Tipper
//
//  Created by Mario Estrada on 10/4/15.
//  Copyright © 2015 Mario Estrada. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var fieldBill: UITextField!
    @IBOutlet weak var labelTip: UILabel!
    @IBOutlet weak var labelTotal: UILabel!
    @IBOutlet weak var segmentPercentage: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        labelTip.text = "$0.00"
        labelTotal.text = "$0.00"
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    @IBAction func onDataChange(sender: AnyObject) {
        let percentages = [0.15,0.2,0.25]
        let tipPercentage = percentages[segmentPercentage.selectedSegmentIndex]
        
        let billValue = fieldBill.text
        let billAmount = Double(billValue!)
        let tip = billAmount! * tipPercentage
        let total = tip + billAmount!
        
        labelTip.text = String(format: "$%.2f", tip)
        labelTotal.text = String(format: "$%.2f", total)
    }
    
    @IBAction func onTap(sender: AnyObject) {
        view.endEditing(true)
    }
}

