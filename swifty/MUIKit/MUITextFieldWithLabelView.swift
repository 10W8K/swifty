//
//  MUITextFieldWithLabel.swift
//  swifty
//
//  Created by 想当当 on 14-6-12.
//  Copyright (c) 2014年 想当当. All rights reserved.
//

import UIKit

class MUITextFieldWithLabelView: UIView {

    var textField:UITextField = UITextField(frame:CGRectMake(0.0, 0.0, 100.0, 30.0))
    var label:UILabel = UILabel(frame:CGRectMake(0.0, 0.0, 50.0, 30.0))
    
    init(frame: CGRect) {
        super.init(frame: frame)
        // Initialization code
        
        self.backgroundColor = UIColor(hex:0xffffff)
        self.textField.backgroundColor = UIColor(hex:0xffffff)
        self.textField.placeholder = "请输入手机号码"
        self.textField.font = UIFont(name:"Helvetica",size:14)
        
        self.label.text = "手机号码"
        self.label.backgroundColor = UIColor(hex:0xffffff)
        self.label.font = UIFont(name:"Helvetica",size:14)
        
        self.addSubview(self.label)
        self.addSubview(self.textField)
        
        
        
        
    }


    // Only override drawRect: if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func drawRect(rect: CGRect)
    {
        // Drawing code
        
        self.textField.setTranslatesAutoresizingMaskIntoConstraints(false)
        self.label.setTranslatesAutoresizingMaskIntoConstraints(false)
        //constraints
        var constraints = NSLayoutConstraint[]()
        
        constraints += NSLayoutConstraint(item: self.label,
                attribute: NSLayoutAttribute.Left,
                relatedBy: NSLayoutRelation.Equal,
                toItem: self,
                attribute: NSLayoutAttribute.Left,
                multiplier: 1.0,
                constant: 10.0)
        
        constraints += NSLayoutConstraint(item: self.label,
            attribute: NSLayoutAttribute.Top,
            relatedBy: NSLayoutRelation.Equal,
            toItem: self,
            attribute: NSLayoutAttribute.Top,
            multiplier: 1.0,
            constant: 0.0)
        
        constraints += NSLayoutConstraint(item: self.label,
            attribute: NSLayoutAttribute.Bottom,
            relatedBy: NSLayoutRelation.Equal,
            toItem: self,
            attribute: NSLayoutAttribute.Bottom,
            multiplier: 1.0,
            constant: 0.0)
        
        
        constraints += NSLayoutConstraint(item: self.textField,
            attribute: NSLayoutAttribute.Top,
            relatedBy: NSLayoutRelation.Equal,
            toItem: self,
            attribute: NSLayoutAttribute.Top,
            multiplier: 1.0,
            constant: 0.0)
        constraints += NSLayoutConstraint(item: self.textField,
            attribute: NSLayoutAttribute.Bottom,
            relatedBy: NSLayoutRelation.Equal,
            toItem: self,
            attribute: NSLayoutAttribute.Bottom,
            multiplier: 1.0,
            constant: 0.0)
        
        constraints += NSLayoutConstraint(item: self.textField,
            attribute: NSLayoutAttribute.Right,
            relatedBy: NSLayoutRelation.Equal,
            toItem: self,
            attribute: NSLayoutAttribute.Right,
            multiplier: 1.0,
            constant: 0.0)
        
        constraints += NSLayoutConstraint(item: self.label,
            attribute: NSLayoutAttribute.Right,
            relatedBy: NSLayoutRelation.Equal,
            toItem: self.textField,
            attribute: NSLayoutAttribute.Left,
            multiplier: 1.01,
            constant: -10.0)
        
        
        constraints += NSLayoutConstraint(item: self.label,
            attribute: NSLayoutAttribute.Right,
            relatedBy: NSLayoutRelation.Equal,
            toItem: self,
            attribute: NSLayoutAttribute.Left,
            multiplier: 1.01,
            constant: 70.0)
        
    
        
        self.addConstraints(constraints)
        
    }
    
    

}
