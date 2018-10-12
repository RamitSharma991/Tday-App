//
//  RoundView.swift
//  TDay
//
//  Created by Ramit sharma on 10/10/18.
//  Copyright © 2018 Ramit sharma. All rights reserved.
//

import UIKit

@IBDesignable
class RoundView: UIView {
    @IBInspectable var cornerRadius: CGFloat = 30.0 {
        didSet{
            setupView()
        }
    }
    
    override func prepareForInterfaceBuilder() {
        setupView()
    }
    
    func setupView() {
        layer.cornerRadius = cornerRadius
            self.layer.shadowOpacity = 0.60
            self.layer.shadowRadius = 5
            self.layer.shadowColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
          
        

    }
}
