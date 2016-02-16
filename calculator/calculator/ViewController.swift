//
//  ViewController.swift
//  calculator
//
//  Created by Marco Guilmette on 2016-02-03.
//  Copyright © 2016 Infologique. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var firstNumber = 0.0
    var secondNumber = 0.0
    var operators = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBOutlet var resultLabel: UILabel!
    
    @IBAction func HandleOperandAction(sender: UIButton) {
        self.resultLabel.text = self.resultLabel.text! + (sender.titleLabel?.text)!
    }
    
    @IBAction func HandleOperatorAction(sender: UIButton) {
        
        if self.operators == "" {
            firstNumber = Double(self.resultLabel.text!)!
        } else {
            secondNumber = Double(self.resultLabel.text!)!
        }
        
        self.resultLabel.text = ""
        self.operators = sender.titleLabel?.text! ?? ""
    }
    
    @IBAction func HandleEqualButtonAction(sender: UIButton) {
        
        secondNumber = Double(self.resultLabel.text!)!
        
        switch operators {
        case "X": firstNumber = firstNumber * secondNumber
        case "/": firstNumber = firstNumber / secondNumber
        case "+": firstNumber = firstNumber + secondNumber
        case "-": firstNumber = firstNumber - secondNumber
        default: firstNumber = 0.0
        }
        
        self.resultLabel.text = String(firstNumber)
        self.operators = ""
        secondNumber = 0.0
    }


}

