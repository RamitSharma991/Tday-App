//
//  GradientView.swift
//  TDay
//
//  Created by Ramit sharma on 10/10/18.
//  Copyright © 2018 Ramit sharma. All rights reserved.
//

import UIKit


@IBDesignable

class GradientView: UIView {
    
        @IBInspectable var topColor: UIColor = #colorLiteral(red: 0.01568627451, green: 0.6705882353, blue: 0.7725490196, alpha: 1) {
            didSet {
                self.setNeedsLayout()
            }
        }
        
        @IBInspectable var bottomColor: UIColor = #colorLiteral(red: 0.721568644, green: 0.8862745166, blue: 0.5921568871, alpha: 1) {
            didSet {
                self.setNeedsLayout()
            }
        }
        
        override func layoutSubviews() {
            let gradientLayer = CAGradientLayer()
            gradientLayer.colors = [topColor.cgColor, bottomColor.cgColor]
            gradientLayer.startPoint = CGPoint(x: 0, y: 1)
            gradientLayer.endPoint = CGPoint(x: 1, y: 0)
            gradientLayer.frame = self.bounds
            self.layer.insertSublayer(gradientLayer, at: 0)
        }
}
