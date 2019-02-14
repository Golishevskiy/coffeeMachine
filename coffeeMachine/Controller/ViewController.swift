//
//  ViewController.swift
//  coffeeMachine
//
//  Created by Per Pert on 2/8/19.
//  Copyright © 2019 Petro. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        var cap = Coffee()
        cap.addCoffe(weight: 80)
        cap.addWater(weight: 1000)
        cap.addMilk(weight: 200)
        cap.americano()
        cap.flatWhite()
    }
}

