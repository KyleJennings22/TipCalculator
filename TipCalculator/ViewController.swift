//
//  ViewController.swift
//  TipCalculator
//
//  Created by Kyle Jennings on 12/16/19.
//  Copyright © 2019 Kyle Jennings. All rights reserved.
//

import UIKit
import LBConfettiView

class ViewController: UIViewController, UITextFieldDelegate {
  
  @IBOutlet weak var costTextField: UITextField!
  @IBOutlet weak var tenPercentLabel: UILabel!
  @IBOutlet weak var fifteenPercentLabel: UILabel!
  @IBOutlet weak var twentyPercentLabel: UILabel!
  @IBOutlet weak var totalCostLabel: UILabel!
  @IBOutlet weak var tipAmountTextField: UITextField!
  
  override func viewDidLoad() {
    super.viewDidLoad()
    costTextField.delegate = self
    let confettiView = ConfettiView(frame: self.view.bounds)
    self.view.addSubview(confettiView)
    confettiView.start()
  }
  
  @IBAction func textFieldEdited(_ sender: UITextField) {
    if let text = sender.text,
      let cost = Double(text) {
      
      let tenPercentCost = ((cost * 0.10 * 100).rounded() / 100)
      let fifteenPercentCost = ((cost * 0.15 * 100).rounded() / 100)
      let twentyPercentCost = ((cost * 0.20 * 100).rounded() / 100)
      
      tenPercentLabel.text = "10%: \(tenPercentCost)"
      fifteenPercentLabel.text = "15%: \(fifteenPercentCost)"
      twentyPercentLabel.text = "20%: \(twentyPercentCost)"
      
      totalCostLabel.text = "Total Cost: \(cost)"
    } else {
      tenPercentLabel.text = "10%:"
      fifteenPercentLabel.text = "15%:"
      twentyPercentLabel.text = "20%:"
    }
    
  }
  @IBAction func tipTextFieldEdited(_ sender: UITextField) {
    if let tipText = tipAmountTextField.text,
      let tipAmount = Double(tipText),
      let costText = costTextField.text,
      let cost = Double(costText) {
      let totalCost = cost + tipAmount
      totalCostLabel.text = "Total Cost: \(totalCost)"
    }
  }
  
  func setupUI() {
    costTextField.addCornerRadius(20)
    tipAmountTextField.addCornerRadius(20)
  }
}

