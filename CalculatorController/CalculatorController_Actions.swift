//
//  CalculatorController_Actions.swift
//  SwipeCalc
//
//  Created by Krishna Ravichander on 4/13/20.
//  Copyright © 2020 GenConcept. All rights reserved.
//

import UIKit
extension CalculatorController{
    
    @objc func cancelOperation(sender:AnyObject){
        
        subTotal = 0
        numberDisplayTextField.text = ""
        equationToBeEvaluated = ""
    }
    
    @objc func changeNumberSign(sender:UIButton){
        
        var tempNumber = Int(numberDisplayTextField.text ?? "")
        tempNumber = 0 - (tempNumber ?? 0)
        numberDisplayTextField.text = String(tempNumber ?? 0)
        equationToBeEvaluated = String(tempNumber ?? 0)
        
    }
    
    @objc func convertToPercent(sender:AnyObject){
        
        
    }
    
    @objc func divideOperation(sender:AnyObject){
        
        if equationToBeEvaluated.contains("/"){
            return
        }else{
            
            equationToBeEvaluated += "\(numberDisplayTextField.text ?? "")/"
            numberDisplayTextField.text = ""
        }
    }
    
    @objc func multiplyOperation(sender: UIButton){
        //        equationTo
        if equationToBeEvaluated.contains("*"){
            return
        }else{
            
            equationToBeEvaluated += "\(numberDisplayTextField.text ?? "")*"
            numberDisplayTextField.text = ""
        }
    }
    
    @objc func addOperation(sender: UIButton){
        
        if equationToBeEvaluated.contains("+"){
            return
        }else{
            
            equationToBeEvaluated += "\(numberDisplayTextField.text ?? "")+"
            //            numberDisplayTextField.text = ""
        }
        
        
        
    }
    
    @objc func subtractOperation(sender: UIButton){
        if equationToBeEvaluated.contains("+"){
            return
        }else{
            
            equationToBeEvaluated += "\(numberDisplayTextField.text ?? "")+"
            numberDisplayTextField.text = ""
        }
    }
    
    @objc func appendOperationSymbol(sender: UIButton){
            
//            let secondToLastCharIndex = equationToBeEvaluated.index(equationToBeEvaluated.endIndex, offsetBy: -2)
//            throw secondToLastCharIndex
            
        
            if equationToBeEvaluated.last == sender.currentTitle?.first{
                return
            }else{
//                equationToBeEvaluated += "\(numberDisplayTextField.text ?? "")\(sender.currentTitle ?? "")"
                if sender.currentTitle == "x"{
                equationToBeEvaluated.append("*")
                }else if sender.currentTitle == "÷"{
                    equationToBeEvaluated.append("/")
                }else{
                    equationToBeEvaluated.append(sender.currentTitle ?? "")
                }
                
                
            }
        numberDisplayTextField.text = ""
        //            if equationToBeEvaluated.last == equationToBeEvaluated[secondToLastCharIndex]{
    }
    
    @objc func equalsOperation(sender: UIButton){
        
//        equationToBeEvaluated += numberDisplayTextField.text ?? ""
        numberDisplayTextField.text = ""
        let expr = NSExpression(format: equationToBeEvaluated)
        if let x = expr.expressionValue(with: nil, context: nil) as? Double {
//            let x = result.doubleValue
            let isInteger = floor(x) == x
            if isInteger{
                equationToBeEvaluated = String(Int(x))
                numberDisplayTextField.text = String(Int(x))
                
            }else{
                equationToBeEvaluated = String(x)
                numberDisplayTextField.text = String(x)

            }
            
            
        } else {
            print("failed")
        }
        
    }
    
    @objc func addDecimalPoint(sender: UIButton){
        
        numberDisplayTextField.text? += "."
        equationToBeEvaluated += "."
    }
    
    @objc func numberPressed(sender:UIButton){
        
        if let number = sender.titleLabel?.text{
            switch number{
            case "0":
                
                numberDisplayTextField.text? += "0"
                evalStringOne += "0"
                equationToBeEvaluated += "0"
            case "1":
                numberDisplayTextField.text? += "1"
                evalStringOne += "1"
                equationToBeEvaluated += "1"
            case "2":
                numberDisplayTextField.text? += "2"
                evalStringOne += "2"
                equationToBeEvaluated += "2"
            case "3":
                numberDisplayTextField.text? += "3"
                evalStringOne += "3"
                equationToBeEvaluated += "3"
            case "4":
                numberDisplayTextField.text? += "4"
                evalStringOne += "4"
                equationToBeEvaluated += "4"
            case "5":
                numberDisplayTextField.text? += "5"
                evalStringOne += "5"
                equationToBeEvaluated += "5"
            case "6":
                numberDisplayTextField.text? += "6"
                evalStringOne += "6"
                equationToBeEvaluated += "6"
            case "7":
                numberDisplayTextField.text? += "7"
                evalStringOne += "7"
                equationToBeEvaluated += "7"
            case "8":
                numberDisplayTextField.text? += "8"
                evalStringOne += "8"
                equationToBeEvaluated += "8"
            case "9":
                numberDisplayTextField.text? += "9"
                evalStringOne += "9"
                equationToBeEvaluated += "9"
            default :
                print("not a number")
            }
        }
    }
    
    func checkEmptyNumberDisplay() -> Bool{
        
        if numberDisplayTextField.text?.isEmpty ?? false{
            return true
        }else{
            return false
        }
    }
    
    //    func blockZeroEntry() -> Bool{
    //        if numberDisplayTextField.text?.isEmpty ?? ""{
    //            zeroButton.isEnabled = false
    //        }else{
    //            zeroButton.isEnabled = true
    //        }
    //    }
}

enum CalculatorOperation{
    
    case add
    case multiply
    case divide
    case subtract
    
    init?(buttonTitle: String){
        
        switch buttonTitle{
        case "+": self = .add
        case "*": self = .multiply
        case "/": self = .divide
        case "-": self = .subtract
        default: return nil
        }
    }
    
    func apply (left: Double, right: Double) -> Double{
        
        switch self{
            
        case .add:
            return left + right
        case .subtract:
            return left - right
        case .multiply:
            return left * right
        case .divide:
            return left / right
        }
    }
}
