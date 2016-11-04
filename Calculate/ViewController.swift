//
//  ViewController.swift
//  Calculate
//
//  Created by student3 on 11/2/16.
//  Copyright © 2016 John Hersey High School. All rights reserved.
//

import UIKit
var firstNumber = 0.0
var secondNumber = 0.0
var function = "none"
var decimal = false
var aOrB = "a"
var answer = 0.0

func assignvalue1(number: Double) ->Double
{
    if decimal == false
    {
        firstNumber = number
    }
    else if decimal == true
    {
        firstNumber = firstNumber + (number/10)
    }
    return firstNumber
}

func assignvalue2(number: Double) ->Double
{
    if decimal == false
    {
        secondNumber = number
    }
    else if decimal == true
    {
        secondNumber = secondNumber + (number/10)
    }
    return secondNumber
}



class ViewController: UIViewController {
    @IBOutlet weak var answerLabel: UILabel!
    @IBAction func oneButton(_ sender: AnyObject) {
        if aOrB == "a"
        {
            assignvalue1(number: 1.0)
            answerLabel.text = String(firstNumber)
        }
        if aOrB == "b"
        {
            assignvalue2(number: 1.0)
            answerLabel.text = String(secondNumber)
        }
    }
    @IBAction func twoButton(_ sender: AnyObject) {
        if aOrB == "a"
        {
            assignvalue1(number: 2.0)
            answerLabel.text = String(firstNumber)
        }
        if aOrB == "b"
        {
            assignvalue2(number: 2.0)
            answerLabel.text = String(secondNumber)
        }
    }
    @IBAction func threeButton(_ sender: AnyObject) {
        if aOrB == "a"
        {
            assignvalue1(number: 3.0)
            answerLabel.text = String(firstNumber)
        }
        if aOrB == "b"
        {
            assignvalue2(number: 3.0)
            answerLabel.text = String(secondNumber)
        }
        
    }
    @IBAction func fourButton(_ sender: AnyObject) {
        if aOrB == "a"
        {
            assignvalue1(number: 4.0)
            answerLabel.text = String(firstNumber)
        }
        if aOrB == "b"
        {
            assignvalue2(number: 4.0)
            answerLabel.text = String(secondNumber)
        }
        
    }
    @IBAction func fiveButton(_ sender: AnyObject) {
        if aOrB == "a"
        {
            assignvalue1(number: 5.0)
            answerLabel.text = String(firstNumber)
        }
        if aOrB == "b"
        {
            assignvalue2(number: 5.0)
            answerLabel.text = String(secondNumber)
        }
        
    }
    @IBAction func sixButton(_ sender: AnyObject) {
        if aOrB == "a"
        {
            assignvalue1(number: 6.0)
            answerLabel.text = String(firstNumber)
        }
        if aOrB == "b"
        {
            assignvalue2(number: 6.0)
            answerLabel.text = String(secondNumber)
        }
        
    }
    @IBAction func sevenButton(_ sender: AnyObject) {
        if aOrB == "a"
        {
            assignvalue1(number: 7.0)
            answerLabel.text = String(firstNumber)
        }
        if aOrB == "b"
        {
            assignvalue2(number: 7.0)
            answerLabel.text = String(secondNumber)
        }
        
    }
    @IBAction func eightButton(_ sender: AnyObject) {
        if aOrB == "a"
        {
            assignvalue1(number: 8.0)
            answerLabel.text = String(firstNumber)
        }
        if aOrB == "b"
        {
            assignvalue2(number: 8.0)
            answerLabel.text = String(secondNumber)
        }
        
    }
    @IBAction func nineButton(_ sender: AnyObject) {
        if aOrB == "a"
        {
            assignvalue1(number: 9.0)
            answerLabel.text = String(firstNumber)
        }
        if aOrB == "b"
        {
            assignvalue2(number: 9.0)
            answerLabel.text = String(secondNumber)
        }
        
    }
    @IBAction func zeroButton(_ sender: AnyObject) {
        if aOrB == "a"
        {
            assignvalue1(number: 0.0)
            answerLabel.text = String(firstNumber)
        }
        if aOrB == "b"
        {
            assignvalue2(number: 0.0)
            answerLabel.text = String(secondNumber)
        }
        
    }
    
    @IBAction func clearButton(_ sender: AnyObject) {
        firstNumber = 0.0
        secondNumber = 0.0
        function = "none"
        decimal = false
        answerLabel.text = ""
        aOrB = "a"
    }
    
    @IBAction func plusButton(_ sender: AnyObject) {
        function = "plus"
        aOrB = "b"
        answerLabel.text = "+"
        decimal = false
    }
    @IBAction func minusButton(_ sender: AnyObject) {
        function = "minus"
        aOrB = "b"
        answerLabel.text = "-"
        decimal = false
    }
    @IBAction func multiplyButton(_ sender: AnyObject) {
        function = "multiply"
        aOrB = "b"
        answerLabel.text = "*"
        decimal = false
    }
    @IBAction func divideButton(_ sender: AnyObject) {
        function = "divide"
        aOrB = "b"
        answerLabel.text = "/"
        decimal = false
    }
    
    @IBAction func calculateButton(_ sender: AnyObject) {
        switch function
        {
        case "plus":
            answer = firstNumber + secondNumber
            answerLabel.text = String(answer)
        case "minus":
            answer = firstNumber - secondNumber
            answerLabel.text = String(answer)
        case "multiply":
            answer = firstNumber * secondNumber
            answerLabel.text = String(answer)
        case "divide":
            answer = firstNumber / secondNumber
            answerLabel.text = String(answer)
        default: break
        }
        aOrB = "a"
        
    }
    @IBAction func decimalButton(_ sender: AnyObject) {
        decimal = true
        answerLabel.text = "."
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        answerLabel.text = ""
    }
    
    
}

