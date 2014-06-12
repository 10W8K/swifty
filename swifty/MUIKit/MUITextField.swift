//
//  MUITextField.swift
//  swifty
//
//  Created by 想当当 on 14-6-12.
//  Copyright (c) 2014年 想当当. All rights reserved.
//

import UIKit

class MUITextField: UITextField {

    init(frame: CGRect) {
        super.init(frame: frame)
        // Initialization code
        
        self.layer.borderWidth = 0.4
        self.layer.borderColor = UIColor(hex:0x999999).CGColor
        
        

    }

    /*
    // Only override drawRect: if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func drawRect(rect: CGRect)
    {
        // Drawing code
    }
    */

}
