//
//  OperationButton.swift
//  SwipeCalc
//
//  Created by Krishna Ravichander on 4/20/20.
//  Copyright © 2020 GenConcept. All rights reserved.
//

import Foundation
import UIKit
class OperationButton: BaseButton{
    
        override init(frame: CGRect) {
            super.init(frame: frame)
            super.initialize()
        }
        
        required init?(coder: NSCoder) {
            super.init(coder: coder)
            super.initialize()
        }
        
        override init(){
            super.init(frame: .zero)
            super.initialize()
        }
        
        override init(title: String){
            super.init(frame: .zero)
            super.initialize()
            self.setTitle(title, for: .normal)
            
        }
        
}
