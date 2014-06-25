//
//  WelComeViewController.swift
//  swifty
//
//  Created by 想当当 on 14-6-17.
//  Copyright (c) 2014年 想当当. All rights reserved.
//

import UIKit

class WelComeViewController: UIViewController {

    
    var indexViewController:IndexViewController?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        //self.parentViewController!.parentViewController!.selectedIndex = 1
        //println("123")
        //self.parentViewController.selectedIndex = 1
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // #pragma mark - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue?, sender: AnyObject?) {
        // Get the new view controller using [segue destinationViewController].
        // Pass the selected object to the new view controller.
    }
    */

}
