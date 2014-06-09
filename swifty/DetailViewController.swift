//
//  DetailViewController.swift
//  swifty
//
//  Created by 想当当 on 14-6-9.
//  Copyright (c) 2014年 想当当. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    override func viewDidLoad() {
        //super.viewDidLoad()

        // Do any additional setup after loading the view.
    
        self.view!.backgroundColor = UIColor.whiteColor()
        //NSLog(self.title);
        if(self.title == "UILabel"){
            // Label
            var label = UILabel(frame: self.view.bounds)
            label.backgroundColor = UIColor.clearColor()
            label.textAlignment = NSTextAlignment.Center
            label.font = UIFont.systemFontOfSize(36)
            label.text = "Hello, Swift"
            self.view.addSubview(label)
        }else if(self.title == "UIButton"){
            // Button
            var button = UIButton.buttonWithType(UIButtonType.System) as? UIButton
            button!.frame = CGRectMake(110.0, 120.0, 100.0, 50.0)
            button!.backgroundColor = UIColor.grayColor()
            button?.setTitleColor(UIColor.redColor(), forState: UIControlState.Normal)
            button!.setTitleColor(UIColor.whiteColor(), forState: UIControlState.Highlighted)
            button?.setTitle("Touch Me", forState: UIControlState.Normal)
            button?.setTitle("Touch Me", forState: UIControlState.Highlighted)
            button?.addTarget(self, action: "buttonAction:", forControlEvents: UIControlEvents.TouchUpInside)
            button!.tag = 100
            self.view.addSubview(button)
        }else if(self.title == "UIImageView"){
            var image     = UIImage(named: "swift-hero.png")
            var imageView = UIImageView(frame: CGRectMake((CGRectGetWidth(self.view.bounds) - image.size.width) / 2.0, 120.0, image.size.width, image.size.height))
            imageView.image = image
            self.view.addSubview(imageView)
        }
        
    }
    
    override func viewWillAppear(animated: Bool) {}
    override func viewDidAppear(animated: Bool) {}
    override func viewWillDisappear(animated: Bool) {}
    override func viewDidDisappear(animated: Bool) {}
    
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
    
    // Button Action
    func buttonAction(sender: UIButton)
    {
        // Swfit -> ObjC

//        var mathSum = MathSum()
//        var sum = mathSum.sum(11, number2: 22)
//        
//        var alert = UIAlertController(title: "Title", message: String(format: "Result = %i", sum), preferredStyle: UIAlertControllerStyle.Alert)
//        alert.addAction(UIAlertAction(title: "OK", style: UIAlertActionStyle.Default, handler: nil))
//        self.presentViewController(alert, animated: true, completion: nil)

        
        /*
        var alertView = UIAlertView()
        alertView.title = "Title"
        alertView.message = "Message"
        alertView.addButtonWithTitle("OK")
        alertView.show()
        */
        
    }

}
