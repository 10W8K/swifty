//
//  ViewController.swift
//  swifty
//
//  Created by 想当当 on 14-6-8.
//  Copyright (c) 2014年 想当当. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: NSBundle?) {
        super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
        // Custom initialization
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        
        self.title = "Swift Demo"
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue!, sender: AnyObject!)
    {
        NSLog("Preparing for segue")
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
