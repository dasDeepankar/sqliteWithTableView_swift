//
//  DesignBtn.swift
//  BRNPulse
//
//  Created by Deepankar on 3/22/18.
//  Copyright © 2018 DASLAB. All rights reserved.
//

import UIKit
@IBDesignable
class DesignBtn: UIButton {

    @IBInspectable var cornerRadious: CGFloat = 0
        {
        didSet
        {
            update()
        }
    }
    @IBInspectable var borderWidth: CGFloat = 0
        {
        didSet
        {
            update()
        }
    }
    @IBInspectable var borderColor: UIColor?
        {
        didSet
        {
            update()
        }
    }

    func update() {
        
        layer.cornerRadius = cornerRadious
        layer.borderWidth = borderWidth
        layer.borderColor = borderColor?.cgColor
    }
}
