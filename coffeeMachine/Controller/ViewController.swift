//
//  ViewController.swift
//  coffeeMachine
//
//  Created by Per Pert on 2/8/19.
//  Copyright © 2019 Petro. All rights reserved.
//

import UIKit


class ViewController: UIViewController {


    @IBOutlet weak var weightCoffeTextField: UITextField!
    @IBAction func addCoffe(_ sender: Any) {
        let cofeeWeight = weightCoffeTextField!.text ?? "0"
        let result = cap.addCoffe(weight: Int(cofeeWeight) ?? 0)
        print(result)
    }
    
    var cap = Coffee()
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
}

