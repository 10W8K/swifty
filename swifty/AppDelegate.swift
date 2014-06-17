//
//  AppDelegate.swift
//  swifty
//
//  Created by 想当当 on 14-6-8.
//  Copyright (c) 2014年 想当当. All rights reserved.
//

import UIKit



@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
                            
    var window: UIWindow? ,
        firstResponder: AnyObject? ,
        rootNavigationController: UINavigationController? ,
        rootViewController: RootViewController?
    
    var notificationCenter = NSNotificationCenter.defaultCenter()
    
    
    func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: NSDictionary?) -> Bool {
        
        self.notificationCenter.addObserver(self, selector: "handleFirstResponder:", name: "firstResponder", object: nil)
        //要在Info.plist内增加
        //View controller-based status bar appearance
        //并且值设置为true
        UIApplication.sharedApplication().setStatusBarStyle(UIStatusBarStyle.LightContent,animated:true)
        
        
        self.window = UIWindow(frame: UIScreen.mainScreen().bounds)
        self.window!.backgroundColor = UIColor.whiteColor()
        
        self.rootViewController = RootViewController()
        
    
        // Override point for customization after application launch.
        self.window!.rootViewController = self.rootViewController;
        self.window!.makeKeyAndVisible()
        return true
    }
    


    func applicationWillResignActive(application: UIApplication) {
        println("applicationWillResignActive")
        // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
        // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
    }

    func applicationDidEnterBackground(application: UIApplication) {
        println("applicationDidEnterBackground")
        // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
        // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
    }

    func applicationWillEnterForeground(application: UIApplication) {
        println("applicationWillEnterForeground")
        // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
    }

    func applicationDidBecomeActive(application: UIApplication) {
        println("applicationDidBecomeActive")
        // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
    }

    func applicationWillTerminate(application: UIApplication) {
        println("applicationWillTerminate")
        // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
    }

    override func touchesBegan(touches: NSSet!, withEvent event: UIEvent!)
    {
        println("....")
        if(self.firstResponder !== nil){
            self.firstResponder!.resignFirstResponder()
            self.firstResponder = nil
        }
        
    }
    
    func handleFirstResponder(notification: NSNotification){
        println("notification handleFirstResponder")
        self.firstResponder = notification.object
        println(self.firstResponder)
    }
    
    

}

