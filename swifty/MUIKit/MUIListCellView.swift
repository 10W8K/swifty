//
//  MUIListCellView.swift
//  swifty
//
//  Created by 想当当 on 14-6-18.
//  Copyright (c) 2014年 想当当. All rights reserved.
//

import UIKit

class MUIListCellView: UIView {
    
    var titleLabel:UILabel?
    
    init(frame: CGRect) {
        super.init(frame: frame)
        // Initialization code
        self.backgroundColor = UIColor(hex:0xffffff)
        
        self.titleLabel = UILabel()
                
        self.titleLabel!.textColor = UIColor(hex:0x666666)
        
        self.titleLabel!.lineBreakMode = NSLineBreakMode.ByWordWrapping
        
        self.titleLabel!.numberOfLines = 0;
        
        self.addSubview(self.titleLabel!)
        
        //println(self.frame)
        //self.sizeToFit()
        //self.autoresizingMask = UIViewAutoresizing.FlexibleHeight
        
        self.autoresizingMask = (UIViewAutoresizing.FlexibleWidth | UIViewAutoresizing.FlexibleHeight)
    }


    // Only override drawRect: if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func drawRect(rect: CGRect)
    {
        // Drawing code
        
        self.titleLabel!.setTranslatesAutoresizingMaskIntoConstraints(false)
        //constraints
        var constraints = NSLayoutConstraint[]()
        
        constraints += NSLayoutConstraint(item: self.titleLabel!,
            attribute: NSLayoutAttribute.Left,
            relatedBy: NSLayoutRelation.Equal,
            toItem: self,
            attribute: NSLayoutAttribute.Left,
            multiplier: 1.0,
            constant: 10.0)
        
        constraints += NSLayoutConstraint(item: self.titleLabel!,
            attribute: NSLayoutAttribute.Top,
            relatedBy: NSLayoutRelation.Equal,
            toItem: self,
            attribute: NSLayoutAttribute.Top,
            multiplier: 1.0,
            constant: 5.0)
        
        constraints += NSLayoutConstraint(item: self.titleLabel!,
            attribute: NSLayoutAttribute.Right,
            relatedBy: NSLayoutRelation.Equal,
            toItem: self,
            attribute: NSLayoutAttribute.Right,
            multiplier: 1.0,
            constant: -10.0)
        
        constraints += NSLayoutConstraint(item: self.titleLabel!,
            attribute: NSLayoutAttribute.Bottom,
            relatedBy: NSLayoutRelation.Equal,
            toItem: self,
            attribute: NSLayoutAttribute.Bottom,
            multiplier: 1.0,
            constant: -5.0)
        
        self.addConstraints(constraints)
    }


}
