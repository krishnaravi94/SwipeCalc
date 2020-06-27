//
//  ViewController.swift
//  SwipeCalc
//
//  Created by Krishna Ravichander on 4/13/20.
//  Copyright © 2020 GenConcept. All rights reserved.
//

import UIKit

class SwipeCalcController: UIViewController {

    //MARK:- UI Elements Declaration
    var numberDisplayTextField : UITextField = {
        let text = UITextField(frame:.zero)
        text.translatesAutoresizingMaskIntoConstraints = false
        text.isEnabled = false
        text.textAlignment = .right
        text.font = UIFont.systemFont(ofSize: 30)
        text.adjustsFontSizeToFitWidth = true
        return text
    }()
    
    var subTotal = Double()
    
    var numberButtonArray = [UIButton]()
    
    var fullVerticalStackView : UIStackView = {
        let view = UIStackView(frame:.zero)
        view.translatesAutoresizingMaskIntoConstraints = false
        view.axis = .vertical
        view.distribution = .equalSpacing
        return view
    }()
    //MARK:- First Row
    var firstHorizontalStackView     : UIStackView = {
        let view = UIStackView(frame:.zero)
        view.translatesAutoresizingMaskIntoConstraints = false
        view.axis = .horizontal
        view.alignment = .fill
        view.distribution = .equalSpacing

        return view
    }()
    
    var cancelNumberButton           = SecondaryOperationButton(title: "AC")
    var signChangeButton             = SecondaryOperationButton(title: "+/-")
    var convertToPercentButton       = SecondaryOperationButton(title: "%")
    var divideButton                 = OperationButton(title: "\u{F7}")
    var equationToBeEvaluated        = String()
    var evalStringOne                = String()
    var evalStringTwo                = String()
    
    var isNumberSignChanged          = false
    //MARK:- Second Row
    var secondHorizontalStackView    : UIStackView = {
        let view = UIStackView(frame:.zero)
        view.translatesAutoresizingMaskIntoConstraints = false
        view.axis = .horizontal
        view.alignment = .fill
        view.distribution = .equalSpacing
        return view
    }()
    
    var sevenButton                  = NumberButton(title: "7")
    var eightButton                  = NumberButton(title: "8")
    var nineButton                   = NumberButton(title: "9")
    var multiplyButton               = OperationButton(title: "x")
    //MARK:- Third Row
    var thirdHorizontalStackView     : UIStackView = {
        let view = UIStackView(frame:.zero)
        view.translatesAutoresizingMaskIntoConstraints = false
        view.axis = .horizontal
        view.alignment = .fill
        view.distribution = .equalSpacing
        return view
    }()
    
    var fourButton                   = NumberButton(title: "4")
    var fiveButton                   = NumberButton(title: "5")
    var sixButton                    = NumberButton(title: "6")
    var minusButton                  = OperationButton(title: "-")
    //MARK:- Fourth Row
    var fourthHorizontalStackView     : UIStackView = {
        let view = UIStackView(frame:.zero)
        view.translatesAutoresizingMaskIntoConstraints = false
        view.axis = .horizontal
        view.alignment = .fill
        view.distribution = .equalSpacing
        return view
    }()
    
    var oneButton                    = NumberButton(title: "1")
    var twoButton                    = NumberButton(title: "2")
    var threeButton                  = NumberButton(title: "3")
    var plusButton                   = OperationButton(title: "+")
    //MARK:- Fifth Row
    var fifthHorizontalStackView     : UIStackView = {
        let view = UIStackView(frame:.zero)
        view.translatesAutoresizingMaskIntoConstraints = false
        view.axis = .horizontal
        view.alignment = .leading
        view.distribution = .fillProportionally
        return view
    }()
    
    var zeroButton                   = NumberButton(title: "0")
    var decimalButton                = NumberButton(title: ".")
    var equalsButton                 = OperationButton(title: "=")
    

    //MARK:- View Lifecycle Methods
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
        setConstraints()
        setupButtonActions()
    }


}

enum swipeDirection{
    
    case left
    case right
}
