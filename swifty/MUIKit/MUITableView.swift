//
//  MUITableView.swift
//  swifty
//
//  Created by 想当当 on 14-6-13.
//  Copyright (c) 2014年 想当当. All rights reserved.
//

import UIKit

class MUITableView: UITableView {

    init(frame: CGRect, style: UITableViewStyle) {
        super.init(frame: frame, style: style)
        // Initialization code
    }


    // Only override drawRect: if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func drawRect(rect: CGRect)
    {
        // Drawing code
        

        self.scrollEnabled = false
        
        self.setTranslatesAutoresizingMaskIntoConstraints(false)
        //constraints
        var constraints = NSLayoutConstraint[]()
        
        constraints += NSLayoutConstraint(item: self,
            attribute: NSLayoutAttribute.Left,
            relatedBy: NSLayoutRelation.Equal,
            toItem: self.superview,
            attribute: NSLayoutAttribute.Left,
            multiplier: 1.0,
            constant: 0.0)
        
        constraints += NSLayoutConstraint(item: self,
            attribute: NSLayoutAttribute.Top,
            relatedBy: NSLayoutRelation.Equal,
            toItem: self.superview,
            attribute: NSLayoutAttribute.Top,
            multiplier: 1.0,
            constant: 0.0)
        
        constraints += NSLayoutConstraint(item: self,
            attribute: NSLayoutAttribute.Bottom,
            relatedBy: NSLayoutRelation.Equal,
            toItem: self.superview,
            attribute: NSLayoutAttribute.Top,
            multiplier: 1.0,
            constant: self.contentSize.height + (self.window!.rootViewController.interfaceOrientation == UIInterfaceOrientation.Portrait ? 64.0 : 32.0))
        

        constraints += NSLayoutConstraint(item: self,
            attribute: NSLayoutAttribute.Right,
            relatedBy: NSLayoutRelation.Equal,
            toItem: self.superview,
            attribute: NSLayoutAttribute.Right,
            multiplier: 1.0,
            constant: 0.0)
        

        self.superview.removeConstraints(self.superview.constraints())
        self.superview.addConstraints(constraints)
        
        //self.scrollRectToVisible(CGRectMake(0,0,1,1), animated: false)
        /**
         * bugfix
         * 输入框聚焦,唤起键盘
         * 屏幕发生旋转, 出现了输入框被往上顶出的现象, 即UITableView产生了scroll
         * 使用下面这句搞定
         */
        self.setContentOffset(CGPointZero,animated:false)
        
    
    }
    
    


}
