//
//  ViewController.swift
//  coffeeMachine
//
//  Created by Per Pert on 2/8/19.
//  Copyright © 2019 Petro. All rights reserved.
//

import UIKit


class ViewController: UIViewController {
    
    @IBOutlet weak var weightWaterTextField: UITextField!
    @IBOutlet weak var weightCoffeTextField: UITextField!
    @IBOutlet weak var weightMilkTextField: UITextField!
    @IBOutlet weak var statusLabel: UILabel!
    var cup = Coffee()
    
    @IBAction func makeAmericano(_ sender: Any) {
        let result = cup.americano()
        statusLabel.text = result
    }
    
    @IBAction func makeEspresso(_ sender: Any) {
        let result = cup.espresso()
        statusLabel.text = result
    }
    
    @IBAction func makeFlatWhite(_ sender: Any) {
        let result = cup.flatWhite()
        statusLabel.text = result
    }
    
    @IBAction func addCoffe(_ sender: Any) {
        let cofeeWeight = weightCoffeTextField.text ?? ""
        let result = cup.addCoffe(weight: Int(cofeeWeight) ?? 0)
        weightCoffeTextField.text = ""
        statusLabel.text = result
    }
    
    @IBAction func addWater(_ sender: Any) {
        let waterWeight = weightWaterTextField.text ?? ""
        let result = cup.addWater(weight: Int(waterWeight) ?? 0)
        weightWaterTextField.text = ""
        statusLabel.text = result
    }
    
    @IBAction func addMilk(_ sender: Any) {
        let milkWeight = weightMilkTextField.text ?? ""
        let result = cup.addMilk(weight: Int(milkWeight) ?? 0)
        weightMilkTextField.text = ""
        statusLabel.text = result
    }
}

