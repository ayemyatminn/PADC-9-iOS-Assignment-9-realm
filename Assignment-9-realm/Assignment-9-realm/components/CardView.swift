//
//  CardView.swift
//  Assignment-9-realm
//
//  Created by Aye Myat Minn on 10/18/19.
//  Copyright © 2019 Aye Myat Minn. All rights reserved.
//

import Foundation
import UIKit

@IBDesignable
class CardView: UIView{
    @IBInspectable var cornerRadius: CGFloat = 2
    @IBInspectable var shadowOffsetWidth: Int = 0
    @IBInspectable var shadowOffsetHeight: Int = 3
    @IBInspectable var shadowColor:UIColor? = UIColor.black
    @IBInspectable var shadowOpacity:Float = 0.5
    
    override func layoutSubviews() {
        layer.cornerRadius = cornerRadius
        let shadowPath = UIBezierPath(roundedRect: bounds, cornerRadius: cornerRadius)
        layer.masksToBounds = false
        layer.shadowColor = shadowColor?.cgColor
        layer.shadowOffset = CGSize(width: shadowOffsetWidth, height: shadowOffsetHeight)
        layer.shadowOpacity = shadowOpacity
        layer.shadowPath = shadowPath.cgPath
    }
}
