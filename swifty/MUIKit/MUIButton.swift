//
//  MUIButton.swift
//  swifty
//
//  Created by 想当当 on 14-6-10.
//  Copyright (c) 2014年 想当当. All rights reserved.
//

import UIKit


class MUIButton: UIButton {
    
    let button = UIButton.buttonWithType(UIButtonType.System) as? UIButton
    
    init(frame: CGRect) {
        super.init(frame: frame)
        // Initialization code

    }
    

    // Only override drawRect: if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func drawRect(rect: CGRect)
    {
        // Drawing code
        self.layer.backgroundColor = UIColor.grayColor().CGColor
        self.layer.borderWidth = 1.0
        self.layer.cornerRadius = 4.0
        self.setTitleColor(UIColor.blueColor(), forState: UIControlState.Normal)
        self.setTitleColor(UIColor.redColor(), forState: UIControlState.Highlighted)

        
        self.setTranslatesAutoresizingMaskIntoConstraints(false)
        
        
        
        //constraints
        var constraints = NSLayoutConstraint[]()
        constraints += NSLayoutConstraint(item: self,
            attribute: NSLayoutAttribute.Left,
            relatedBy: NSLayoutRelation.Equal,
            toItem: self.superview,
            attribute: NSLayoutAttribute.Left,
            multiplier: 1.0,
            constant: 10.0)
        
        
        constraints += NSLayoutConstraint(item: self,
            attribute: NSLayoutAttribute.Right,
            relatedBy: NSLayoutRelation.Equal,
            toItem: self.superview,
            attribute: NSLayoutAttribute.Right,
            multiplier: 1.0,
            constant: -10.0)
        
        
        constraints += NSLayoutConstraint(item: self,
            attribute: NSLayoutAttribute.Top,
            relatedBy: NSLayoutRelation.Equal,
            toItem: self.superview,
            attribute: NSLayoutAttribute.Bottom,
            multiplier: 1.0,
            constant: -50.0)
        
        
        
        
        self.superview.addConstraints(constraints)
        
    
        
    }


}
