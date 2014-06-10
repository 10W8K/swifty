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
        self.frame = CGRectMake(110.0, 120.0, 100.0, 50.0)
        self.backgroundColor = UIColor.grayColor()
        self.setTitleColor(UIColor.redColor(), forState: UIControlState.Normal)
        self.setTitleColor(UIColor.whiteColor(), forState: UIControlState.Highlighted)
        self.setTitle("Touch Me", forState: UIControlState.Normal)
        self.setTitle("Touch Me", forState: UIControlState.Highlighted)
        //self.addTarget(self, action: "buttonAction:", forControlEvents: UIControlEvents.TouchUpInside)
        self.tag = 100

    }


}
