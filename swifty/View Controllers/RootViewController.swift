//
//  RootViewController.swift
//  swifty
//
//  Created by 想当当 on 14-6-16.
//  Copyright (c) 2014年 想当当. All rights reserved.
//

import UIKit

class RootViewController: UITabBarController {

    var rootNavigationController: UINavigationController? ,
        indexViewController: IndexViewController? ,
        formViewController: FormViewController?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        
        self.indexViewController = IndexViewController()
        self.rootNavigationController = UINavigationController(rootViewController:indexViewController!)
        //self.rootNavigationController!.tabBarItem.image = UIImage(named: "swift-hero.png")
        //self.rootNavigationController!.tabBarItem = UITabBarItem(title: "首页", image:UIImage(named:"swift-hero.png"), selectedImage:nil)
        //self.rootNavigationController!.tabBarItem.imageInsets = UIEdgeInsetsMake(6, 0, -6, 0);

        
        //navigationBar settings
        //self.rootNavigationController!.navigationBar.titleTextAttributes = NSDictionary(object: UIColor.whiteColor(), forKey: NSForegroundColorAttributeName)
        //self.rootNavigationController!.navigationBar.barTintColor = UIColor(hex:0x1A1F21)
        //self.rootNavigationController!.navigationBar.backgroundColor = UIColor(hex:0x1A1F21)
        //self.rootNavigationController!.navigationBar.alpha = 1.0
        //self.rootNavigationController!.navigationBar.translucent = false
        
        
        
        //self.rootNavigationController!.navigationBar.backgroundColor = UIColor(hex:0x1A1F21)
        //self.rootNavigationController!.navigationBar.titleTextAttributes = UIColor(hex:0x000000)
        
        //self.delegate = self
        
        self.formViewController = FormViewController()
        self.formViewController!.tabBarItem.title = "表单"
        
        self.setViewControllers([self.rootNavigationController!,self.formViewController!],animated:true)
        //self.viewControllers = [self.rootNavigationController!]
        
        
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
