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
        //self.layer.backgroundColor = UIColor.greenColor().CGColor
        self.layer.borderWidth = 1.0
        self.layer.cornerRadius = 4.0
        self.setTitleColor(UIColor.redColor(), forState: UIControlState.Normal)
        self.setTitleColor(UIColor.blueColor(), forState: UIControlState.Highlighted)

        
        self.setTranslatesAutoresizingMaskIntoConstraints(false)
        

        /** help - how to use autolayout in swift
        let constraint = NSLayoutConstraint(
                    constraintsWithVisualFormat:"H:|-20-[self.view]-20-|",
                    options:0,
                    metrics:nil,
                    views:NSDictionaryOfVariableBindings(self.view))
        */
        
        self.superview.addConstraints([
            
            ])
        
        
        //NSLayoutConstraint(constraintsWithVisualFormat:"V:|-20-[self.view]-20-|")
        
    }


}
