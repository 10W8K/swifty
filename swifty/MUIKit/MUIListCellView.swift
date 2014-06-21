//
//  MUIListCellView.swift
//  swifty
//
//  Created by 想当当 on 14-6-18.
//  Copyright (c) 2014年 想当当. All rights reserved.
//

import UIKit

class MUIListCellView: UIView {
    
    var title:UILabel?
    
    init(frame: CGRect) {
        super.init(frame: frame)
        // Initialization code
        self.backgroundColor = UIColor(hex:0xffffff)
        
        self.title = UILabel()
                
        self.title!.textColor = UIColor(hex:0x666666)
        
        self.title!.lineBreakMode = NSLineBreakMode.ByTruncatingTail
        
        self.title!.numberOfLines = 2;
        
        self.insertSubview(self.title!, atIndex:1)
    
        self.sizeToFit()
        
        self.layer.borderWidth = 2.0
        
        self.autoresizingMask = (UIViewAutoresizing.FlexibleWidth | UIViewAutoresizing.FlexibleHeight)
    }


    // Only override drawRect: if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func drawRect(rect: CGRect)
    {
        //println(self.frame)
        // Drawing code
        
        self.title!.setTranslatesAutoresizingMaskIntoConstraints(false)
        //constraints
        var constraints = NSLayoutConstraint[]()
        
        constraints += NSLayoutConstraint(item: self.title!,
            attribute: NSLayoutAttribute.Left,
            relatedBy: NSLayoutRelation.Equal,
            toItem: self,
            attribute: NSLayoutAttribute.Left,
            multiplier: 1.0,
            constant: 10.0)
        
        constraints += NSLayoutConstraint(item: self.title!,
            attribute: NSLayoutAttribute.Top,
            relatedBy: NSLayoutRelation.Equal,
            toItem: self,
            attribute: NSLayoutAttribute.Top,
            multiplier: 1.0,
            constant: 5.0)
        
        constraints += NSLayoutConstraint(item: self.title!,
            attribute: NSLayoutAttribute.Right,
            relatedBy: NSLayoutRelation.Equal,
            toItem: self,
            attribute: NSLayoutAttribute.Right,
            multiplier: 1.0,
            constant: -10.0)
        
        constraints += NSLayoutConstraint(item: self.title!,
            attribute: NSLayoutAttribute.Bottom,
            relatedBy: NSLayoutRelation.Equal,
            toItem: self,
            attribute: NSLayoutAttribute.Bottom,
            multiplier: 1.0,
            constant: -5.0)
        
        self.addConstraints(constraints)
    }


}
