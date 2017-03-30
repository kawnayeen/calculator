//
//  ViewController.swift
//  calculator
//
//  Created by kamarul kawnayeen on 3/30/17.
//  Copyright © 2017 Questtag. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var display: UILabel!
    
    var isFirstTime: Bool = true
    
    @IBAction func touchDigit(_ sender: UIButton) {
        let digit = sender.currentTitle!
        if isFirstTime {
            display.text = digit
            isFirstTime = false
        } else {
            let textCurrentlyInDisplay = display.text!
            display.text = textCurrentlyInDisplay + digit
        }
    }
    
    var displayValue: Double {
        get{
            return Double(display.text!)!
        }
        set {
            display.text = String(newValue)
        }
    }
    
    @IBAction func performAction(_ sender: UIButton) {
        isFirstTime = true
        if let mathematicalSymbol = sender.currentTitle {
            switch mathematicalSymbol {
            case "π":
                displayValue = Double.pi
            case "√":
                displayValue = sqrt(displayValue)
            default:
                break
            }
        }
    }
}

