//
//  RootViewController.swift
//  swifty
//
//  Created by 想当当 on 14-6-16.
//  Copyright (c) 2014年 想当当. All rights reserved.
//

import UIKit

struct Static {
    static var token: dispatch_once_t = 0
}

class RootViewController: UITabBarController, UITabBarControllerDelegate {
    

    var rootNavigationController: UINavigationController? ,
        //firstResponder: AnyObject?,
        indexViewController: IndexViewController? ,
        formViewController: FormViewController? ,
        welcomeViewController: WelComeViewController?
    
    //var notificationCenter = NSNotificationCenter.defaultCenter()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.delegate = self
        
        // Do any additional setup after loading the view.
        //self.view.backgroundColor = UIColor(hex:0x1A1F21)
        self.welcomeViewController = WelComeViewController()

        
        self.indexViewController = IndexViewController()
        self.rootNavigationController = UINavigationController(rootViewController:indexViewController!)
        //self.rootNavigationController!.tabBarItem.image = UIImage(named: "swift-hero.png")
        self.rootNavigationController!.tabBarItem = UITabBarItem(title: "首页", image:UIImage(named:"Home.png"), selectedImage:nil)
        //self.rootNavigationController!.tabBarItem.imageInsets = UIEdgeInsetsMake(6, 0, -6, 0);

        
        //navigationBar settings
        //self.rootNavigationController!.navigationBar.titleTextAttributes = NSDictionary(object: UIColor.whiteColor(), forKey: NSForegroundColorAttributeName)
        self.rootNavigationController!.navigationBar.barTintColor = UIColor(hex:0x1A1F21)
        self.rootNavigationController!.navigationBar.tintColor = UIColor(hex:0xffffff)
        //self.rootNavigationController!.navigationBar.backgroundColor = UIColor(hex:0x1A1F21)
        self.rootNavigationController!.navigationBar.alpha = 1
        //self.rootNavigationController!.navigationBar.translucent = false
        


        UINavigationBar.appearance().titleTextAttributes = [
            NSFontAttributeName : UIFont(name:"Helvetica",size:16),
            NSForegroundColorAttributeName : UIColor(hex:0xffffff)
        ]
        
        
        //self.rootNavigationController!.navigationBar.backgroundColor = UIColor(hex:0x1A1F21)
        //self.rootNavigationController!.navigationBar.titleTextAttributes = UIColor(hex:0x000000)
        
        //self.delegate = self
        
        self.formViewController = FormViewController()
        self.formViewController!.tabBarItem.title = "足球"
        self.formViewController!.tabBarItem = UITabBarItem(title: "足球", image:UIImage(named:"Football.png"), selectedImage:nil)
        
        
        self.setViewControllers([self.rootNavigationController!,self.formViewController!],animated:true)
        //self.viewControllers = [self.rootNavigationController!]
        //self.selectedViewController = self.formViewController!
        self.selectedIndex = 0
        //self.navigationController.pushViewController(self.indexViewController!, animated:true)
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
    
    override func viewWillAppear(animated: Bool) {
        //self.notificationCenter.addObserver(self, selector: "handleFirstResponder:", name: "firstResponder", object: nil)
    }
    
    override func updateViewConstraints() {
        println("RootViewController === > updateViewConstraints")
        super.updateViewConstraints()
        //println("updateViewConstraints")
    }
    
    func tabBarController(tabBarController: UITabBarController!, shouldSelectViewController viewController: UIViewController!) -> Bool{
        return true
    }
    
    func tabBarController(tabBarController: UITabBarController!, didSelectViewController viewController: UIViewController!){

    }
}
