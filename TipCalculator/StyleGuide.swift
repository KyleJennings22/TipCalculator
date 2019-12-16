//
//  StyleGuide.swift
//  TipCalculator
//
//  Created by Kyle Jennings on 12/16/19.
//  Copyright © 2019 Kyle Jennings. All rights reserved.
//

import UIKit

extension UIView {
    func addCornerRadius(_ radius: CGFloat = 4) {
        self.layer.cornerRadius = radius
    }
    
  func addAccentBorder(width: CGFloat = 1, color: UIColor = UIColor.systemRed) {
        self.layer.borderWidth = width
        self.layer.borderColor = color.cgColor
    }
    
    func rotate(by radians: CGFloat = (-CGFloat.pi/2)) {
        self.transform = CGAffineTransform(rotationAngle: radians)
    }
}
