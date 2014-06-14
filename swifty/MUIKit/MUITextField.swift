//
//  MUITextField.swift
//  swifty
//
//  Created by 想当当 on 14-6-12.
//  Copyright (c) 2014年 想当当. All rights reserved.
//

import UIKit

class MUITextField: UITextField, UITextFieldDelegate {

    init(frame: CGRect) {
        super.init(frame: frame)
        // Initialization codes
        self.layer.borderWidth = 0
        self.delegate = self
        
    }
    
    
    func textFieldShouldReturn(textField: UITextField!) -> Bool{
        textField.resignFirstResponder();
        return true
    }
    

    
    func textFieldDidBeginEditing(textField: UITextField!){
        self.becomeFirstResponder()
        NSNotificationCenter.defaultCenter().postNotificationName("firstResponder", object: self)
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
