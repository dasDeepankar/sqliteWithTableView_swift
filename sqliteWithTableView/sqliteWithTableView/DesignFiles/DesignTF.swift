//
//  DesignTF.swift
//  BRNPulse
//
//  Created by Deepankar on 3/21/18.
//  Copyright © 2018 DASLAB. All rights reserved.
//

import UIKit
@IBDesignable
class DesignTF: UITextField {

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
    @IBInspectable var image: UIImage?
        {
        didSet
        {
            update()
        }
    }
    @IBInspectable var leftPadding: CGFloat = 0
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
        let imageView = UIImageView()
        
        if let leftImage = image
        {

          leftViewMode = .always
            let imageView = UIImageView.init(frame: CGRect.init(x: leftPadding, y: 0, width: 20   , height: 20))
            imageView.image = leftImage
            var view = UIView()
             view = UIView(frame: CGRect .init(x: 2, y: 2, width: leftPadding + 20, height: 20))
            if borderStyle == UITextBorderStyle.line ||
                borderStyle == UITextBorderStyle.none
            {
                 view = UIView(frame: CGRect .init(x: 2, y: 2, width: leftPadding + 30, height: 20))
            }
            
            
           
           view .addSubview(imageView)
            leftView = view
        }
        else
        {
            leftViewMode = .never
        }
        
        attributedPlaceholder = NSAttributedString(string: placeholder != nil ? placeholder! : "", attributes: [NSAttributedStringKey.foregroundColor: tintColor,NSAttributedStringKey.font : UIFont.boldSystemFont(ofSize: 18)])
        
        imageView.tintColor = tintColor
    }
    
}
