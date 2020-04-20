//
//  BaseButton.swift
//  SwipeCalc
//
//  Created by Krishna Ravichander on 4/13/20.
//  Copyright © 2020 GenConcept. All rights reserved.
//

import UIKit
class BaseButton : UIButton{
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.initialize()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        self.initialize()
    }
    
    init(){
        super.init(frame: .zero)
        self.initialize()
    }
    
    init(title: String){
        super.init(frame: .zero)
        self.initialize()
        self.setTitle(title, for: .normal)
        
    }
    
    func initialize(){
        self.frame = .zero
        self.translatesAutoresizingMaskIntoConstraints = false
        self.backgroundColor = .lightGray
        self.titleLabel?.textColor = .black
        self.setButtonSize()
        self.layer.cornerRadius = UIScreen.main.bounds.width/10
        self.titleLabel?.font = UIFont.systemFont(ofSize: 30)
    }
    
    func setButtonSize(){
        self.widthAnchor.constraint(equalToConstant: UIScreen.main.bounds.width/5).isActive = true
        self.heightAnchor.constraint(equalToConstant: UIScreen.main.bounds.width/5).isActive = true
        
    }
}
