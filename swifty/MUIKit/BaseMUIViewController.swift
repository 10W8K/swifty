//
//  BaseViewController.swift
//  swifty
//
//  Created by 想当当 on 14-6-12.
//  Copyright (c) 2014年 想当当. All rights reserved.
//

import UIKit

class BaseMUIViewController: UIViewController {
    /**
    init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: NSBundle?) {
        super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
        // Custom initialization
    }
    */

    override func viewDidLoad() {
        super.viewDidLoad()
        //
        //let screenWidth = self.view.frame.size.width
        //let screenHeight = self.view.frame.size.height
        //self.view = MUIView(frame:CGRectMake(0,0,screenWidth,screenHeight))
        //or
        self.view = MUIView(frame:UIScreen.mainScreen().bounds)
        
        //
        // Do any additional setup after loading the view.
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
