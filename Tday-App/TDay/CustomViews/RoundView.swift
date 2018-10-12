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

    }
}
