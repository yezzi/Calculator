//
//  ViewController.swift
//  Calculator
//
//  Created by yeye on 16/4/15.
//  Copyright © 2016年 yeye. All rights reserved.
//

import UIKit

class ViewController: UIViewController {


    @IBOutlet weak var display: UILabel!
    
    var userIsInTheMiddleOfTypingANumber: Bool = false

    @IBAction func appendDigit(sender: UIButton) {
        let digit = sender.currentTitle!
        if userIsInTheMiddleOfTypingANumber {
            display.text = display.text! + digit
        } else {
            display.text = digit
            userIsInTheMiddleOfTypingANumber = true
        }
        
    }

    @IBAction func enter() {
        userIsInTheMiddleOfTypingANumber = false
    }
}

