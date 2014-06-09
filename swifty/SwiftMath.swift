//
//  SwiftMath.swift
//  swifty
//
//  Created by 想当当 on 14-6-9.
//  Copyright (c) 2014年 想当当. All rights reserved.
//

import Foundation

class SwiftMath : NSObject
{
    var name : String?
    init(name: String)
    {
        self.name = name
        
        println(self.name)
    }
    
    func sum(num1 :Int, num2 :Int) -> Int
    {
        return (num1 + num2)
    }
    
    func multiply(num1: Int, num2 :Int) -> Int
    {
        return num1 * num2
    }
}