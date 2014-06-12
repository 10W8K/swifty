//
//  MUIButton.swift
//  swifty
//
//  Created by 想当当 on 14-6-10.
//  Copyright (c) 2014年 想当当. All rights reserved.
//

import UIKit
import QuartzCore


class MUIButton: UIButton {
    
    //let button = UIButton.buttonWithType(UIButtonType.System) as? UIButton
    
    let gradientLayer:CAGradientLayer = CAGradientLayer()
    
    init(frame: CGRect) {
        super.init(frame: frame)
        // Initialization code
        self.addTarget(self, action: "touchDown", forControlEvents: UIControlEvents.TouchDown)
        self.addTarget(self, action: "touchUpInside", forControlEvents: UIControlEvents.TouchUpInside)
        
        self.layer.masksToBounds = true;
        self.contentVerticalAlignment = UIControlContentVerticalAlignment.Center;
        self.font = UIFont(name:"Helvetica",size:16)
        
        self.layer.borderWidth = 0.4
        self.layer.borderColor = UIColor(hex:0x999999).CGColor
        self.layer.cornerRadius = 3.0
        self.setTitleColor(UIColor(hex:0xffffff), forState: UIControlState.Normal)
        self.setTitleColor(UIColor(hex:0xffffff), forState: UIControlState.Highlighted)
        self.setTitle("确定",forState: UIControlState.Normal)
        self.setTitle("确定", forState: UIControlState.Highlighted)
        //self.layer.backgroundColor = UIColor.grayColor().CGColor
        //self.layer.backgroundColor = UIColor(hex:0xdd352f).CGColor
        
    }
    
    

    

    // Only override drawRect: if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func drawRect(rect: CGRect)
    {
        // Drawing code
        self.gradientLayer.bounds = self.layer.bounds
        self.gradientLayer.anchorPoint = CGPointMake(0.0, 0.0);
        self.gradientLayer.colors = [
            UIColor(hex:0xff6600).CGColor,
            UIColor(hex:0xff0000).CGColor,
            UIColor(hex:0xff6600).CGColor
        ]
        
        self.gradientLayer.startPoint = CGPointMake(0.0, 0.0);
        self.gradientLayer.endPoint = CGPointMake(0.0, 2.0);
        
        self.gradientLayer.removeFromSuperlayer()
        self.layer.insertSublayer(self.gradientLayer,atIndex:0)
        
        
        
        
        
        
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
    
    
    // Button Handler
    func touchDown(){

        self.gradientLayer.colors = [
            UIColor(hex:0xff0000).CGColor,
            UIColor(hex:0xff6600).CGColor,
            UIColor(hex:0xff0000).CGColor
        ]
        
        self.gradientLayer.startPoint = CGPointMake(0.0, 0.0);
        self.gradientLayer.endPoint = CGPointMake(0.0, 2.0);
        
        self.gradientLayer.removeFromSuperlayer()
        self.layer.insertSublayer(self.gradientLayer,atIndex:0)
    }
    
    
    func touchUpInside() {
        self.gradientLayer.colors = [
            
            UIColor(hex:0xff6600).CGColor,
            UIColor(hex:0xff0000).CGColor,
            UIColor(hex:0xff6600).CGColor
        ]
        
        self.gradientLayer.startPoint = CGPointMake(0.0, 0.0);
        self.gradientLayer.endPoint = CGPointMake(0.0, 2.0);
        
        self.gradientLayer.removeFromSuperlayer()
        self.layer.insertSublayer(self.gradientLayer,atIndex:0)

    }
    


}
