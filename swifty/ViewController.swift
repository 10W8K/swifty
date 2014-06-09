//
//  ViewController.swift
//  swifty
//
//  Created by 想当当 on 14-6-8.
//  Copyright (c) 2014年 想当当. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var objects = NSMutableArray()
    var leftBarButton: ENMBadgedBarButtonItem = ENMBadgedBarButtonItem()
    var count = 0
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        title = "My Table"
    }
    
    /*
    init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: NSBundle?) {
        super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
        // Custom initialization
    }*/

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        
        //self.title = "Swift Demo"
        
        //println("Hello, world")
        
        //self.navigationController.toolbarHidden = true
        self.navigationItem.title = "Swifty"
        
        setUpLeftBarButton()
        
        let addButton = UIBarButtonItem(barButtonSystemItem: .Rewind,
            target: self,
            action: "rightButtonPressed:")
        navigationItem.rightBarButtonItem = addButton
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


extension ViewController {
    
    func setUpLeftBarButton() {
        var image = UIImage(named: "barbuttonimage")
        var button = UIButton.buttonWithType(.Custom) as UIButton
        button.frame = CGRectMake(0.0, 0.0, image.size.width, image.size.height)
        button.setBackgroundImage(image, forState: UIControlState.Normal)
        button.addTarget(self,
            action: "leftButtonPressed:",
            forControlEvents: UIControlEvents.TouchUpInside)
        
        var newBarButton = ENMBadgedBarButtonItem(customView: button, value: "0")
        leftBarButton = newBarButton
        navigationItem.leftBarButtonItem = leftBarButton
    }
}

extension ViewController {
    
    func leftButtonPressed(_sender: UIButton) {
        count++
        leftBarButton.badgeValue = "\(count)"
    }
    
    func rightButtonPressed(_sender: UIButton) {
        count = 0
        leftBarButton.badgeValue = "0"
    }
}
