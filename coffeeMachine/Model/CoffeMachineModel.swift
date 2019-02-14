//
//  File.swift
//  coffeeMachine
//
//  Created by Per Pert on 2/8/19.
//  Copyright © 2019 Petro. All rights reserved.
//

import Foundation

class Coffee {
    var coffee = 0
    var water = 0
    var milk = 0
    var waste = 0 // відпрацьована кава
    
    // check availability of products if available, then make a drink (2 arguments)
    func checkProduct(cofeeDose: Int, waterDose: Int) -> Bool {
        if coffee >= cofeeDose && water >= waterDose {
            coffee -= cofeeDose
            water -= waterDose
            return true
        }
        else {
            return false
        }
    }
    // check availability of products if available, then make a drink (3 arguments)
    func checkProduct(cofeeDose: Int, waterDose: Int, milkDose: Int) -> Bool {
        if coffee >= cofeeDose && water >= waterDose && milk >= milkDose {
            coffee -= cofeeDose
            water -= waterDose
            milk -= milkDose
            return true
        }
        else {
            return false
        }
    }
    
    //check the shortage of products
    func checkShortageOfProducts(cofeeDose: Int, waterDose: Int, milkDose: Int?) {
        if coffee < cofeeDose {
            print("please adds coffee")
        }
        
        if water < waterDose {
            print("please adds water")
        }
        
        if milk < milkDose ?? 100 {
            print("please adds milk")
        }
    }
    //---------------drink-------------
    func americano() {
        let needCoffe = 20
        let needWater = 200
        if checkProduct(cofeeDose: needCoffe, waterDose: needWater) {
            print("Americano done")
        } else {
            checkShortageOfProducts(cofeeDose: needCoffe, waterDose: needWater, milkDose: nil)
        }
    }
        
        func espresso() {
            let needCoffe = 20
            let needWater = 70
            if checkProduct(cofeeDose: needCoffe, waterDose: needWater) {
                print("Espresso done")
            } else {
                checkShortageOfProducts(cofeeDose: needCoffe, waterDose: needWater, milkDose: nil)
            }
        }
        
        func flatWhite() {
            let needCoffe = 30
            let needWater = 70
            let needMilk = 150
            if checkProduct(cofeeDose: needCoffe, waterDose: needWater, milkDose: needMilk) {
                print("flatWhite done")
            } else {
                checkShortageOfProducts(cofeeDose: needCoffe, waterDose: needWater, milkDose: needMilk)
            }
            
        }
        //---------------drink-------------
    
        func addCoffe(weight: Int) -> String {
            coffee += weight
            return "adds \(weight) g coffe"
        }
        
        func addMilk(weight: Int) -> String {
            milk += weight
            return "adds \(weight) g milk"
        }
        
        func addWater(weight: Int) -> String {
            water += weight
            return "adds \(weight) g water"
        }
    }
