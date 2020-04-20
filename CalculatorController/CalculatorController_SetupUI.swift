//
//  CalculatorController_SetupUI.swift
//  SwipeCalc
//
//  Created by Krishna Ravichander on 4/13/20.
//  Copyright © 2020 GenConcept. All rights reserved.
//

import UIKit
extension CalculatorController{
    
    func setupUI(){
        
        numberButtonArray = [oneButton,twoButton,threeButton,fourButton,fiveButton,sixButton,sevenButton,eightButton,nineButton,zeroButton]
        view.backgroundColor = .black
        view.addSubview(numberDisplayTextField)
        view.addSubview(fullVerticalStackView)
        
        firstHorizontalStackView.addArrangedSubview(cancelNumberButton)
        firstHorizontalStackView.addArrangedSubview(signChangeButton)
        firstHorizontalStackView.addArrangedSubview(convertToPercentButton)
        firstHorizontalStackView.addArrangedSubview(divideButton)
        fullVerticalStackView.addArrangedSubview(firstHorizontalStackView)
        
        secondHorizontalStackView.addArrangedSubview(sevenButton)
        secondHorizontalStackView.addArrangedSubview(eightButton)
        secondHorizontalStackView.addArrangedSubview(nineButton)
        secondHorizontalStackView.addArrangedSubview(multiplyButton)
        fullVerticalStackView.addArrangedSubview(secondHorizontalStackView)
        
        thirdHorizontalStackView.addArrangedSubview(fourButton)
        thirdHorizontalStackView.addArrangedSubview(fiveButton)
        thirdHorizontalStackView.addArrangedSubview(sixButton)
        thirdHorizontalStackView.addArrangedSubview(minusButton)
        fullVerticalStackView.addArrangedSubview(thirdHorizontalStackView)
        
        fourthHorizontalStackView.addArrangedSubview(oneButton)
        fourthHorizontalStackView.addArrangedSubview(twoButton)
        fourthHorizontalStackView.addArrangedSubview(threeButton)
        fourthHorizontalStackView.addArrangedSubview(plusButton)
        fullVerticalStackView.addArrangedSubview(fourthHorizontalStackView)
        
        fifthHorizontalStackView.addArrangedSubview(zeroButton)
        fifthHorizontalStackView.addArrangedSubview(decimalButton)
        fifthHorizontalStackView.addArrangedSubview(equalsButton)
        fullVerticalStackView.addArrangedSubview(fifthHorizontalStackView)
        
    }
    
    func setConstraints(){
        
        if #available(iOS 11.0, *) {
            NSLayoutConstraint.activate([
                numberDisplayTextField.topAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.topAnchor),
                numberDisplayTextField.leftAnchor.constraint(equalTo: self.view.leftAnchor),
                numberDisplayTextField.rightAnchor.constraint(equalTo: self.view.rightAnchor),
                numberDisplayTextField.heightAnchor.constraint(equalToConstant: UIScreen.main.bounds.height/4)
            ])
            NSLayoutConstraint.activate([
                fullVerticalStackView.topAnchor.constraint(equalTo: self.numberDisplayTextField.bottomAnchor,constant: UIScreen.main.bounds.width/20),
                fullVerticalStackView.bottomAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.bottomAnchor,constant: -UIScreen.main.bounds.width/20),
                fullVerticalStackView.leftAnchor.constraint(equalTo: self.view.leftAnchor,constant: UIScreen.main.bounds.width/20),
                fullVerticalStackView.rightAnchor.constraint(equalTo: self.view.rightAnchor,constant: -UIScreen.main.bounds.width/20)
            ])
        } else {
            NSLayoutConstraint.activate([
                numberDisplayTextField.topAnchor.constraint(equalTo: self.view.topAnchor),
                numberDisplayTextField.leftAnchor.constraint(equalTo: self.view.leftAnchor),
                numberDisplayTextField.rightAnchor.constraint(equalTo: self.view.rightAnchor),
                numberDisplayTextField.heightAnchor.constraint(equalToConstant: UIScreen.main.bounds.height/4)
            ])
            NSLayoutConstraint.activate([
                fullVerticalStackView.topAnchor.constraint(equalTo: self.numberDisplayTextField.bottomAnchor,constant: UIScreen.main.bounds.width/20),
                fullVerticalStackView.bottomAnchor.constraint(equalTo: self.view.bottomAnchor,constant: -UIScreen.main.bounds.width/20),
                fullVerticalStackView.leftAnchor.constraint(equalTo: self.view.leftAnchor,constant: UIScreen.main.bounds.width/20),
                fullVerticalStackView.rightAnchor.constraint(equalTo: self.view.rightAnchor,constant: -UIScreen.main.bounds.width/20)
            ])
            // Fallback on earlier versions
        }
    }
    
    func setupButtonActions(){
        
        decimalButton.addTarget(self, action: #selector(addDecimalPoint(sender:)), for: .touchUpInside)
        cancelNumberButton.addTarget(self, action: #selector(cancelOperation(sender:)), for: .touchUpInside)
        signChangeButton.addTarget(self, action: #selector(changeNumberSign(sender:)), for: .touchUpInside)
        convertToPercentButton.addTarget(self, action: #selector(convertToPercent(sender:)), for: .touchUpInside)
        divideButton.addTarget(self, action: #selector(appendOperationSymbol(sender:)), for: .touchUpInside)
        multiplyButton.addTarget(self, action: #selector(appendOperationSymbol(sender:)), for: .touchUpInside)
        minusButton.addTarget(self, action: #selector(appendOperationSymbol(sender:)), for: .touchUpInside)
        plusButton.addTarget(self,action: #selector(appendOperationSymbol(sender:)),for: .touchUpInside)
        oneButton.addTarget(self, action: #selector(numberPressed(sender:)), for: .touchUpInside)
        twoButton.addTarget(self, action: #selector(numberPressed(sender:)), for: .touchUpInside)
        threeButton.addTarget(self, action: #selector(numberPressed(sender:)), for: .touchUpInside)
        fourButton.addTarget(self, action: #selector(numberPressed(sender:)), for: .touchUpInside)
        fiveButton.addTarget(self, action: #selector(numberPressed(sender:)), for: .touchUpInside)
        sixButton.addTarget(self, action: #selector(numberPressed(sender:)), for: .touchUpInside)
        sevenButton.addTarget(self, action: #selector(numberPressed(sender:)), for: .touchUpInside)
        eightButton.addTarget(self, action: #selector(numberPressed(sender:)), for: .touchUpInside)
        nineButton.addTarget(self, action: #selector(numberPressed(sender:)), for: .touchUpInside)
        zeroButton.addTarget(self, action: #selector(numberPressed(sender:)), for: .touchUpInside)
        equalsButton.addTarget(self, action: #selector(equalsOperation(sender:)), for: .touchUpInside)
    }
}
