//
//  RootViewController.swift
//  swifty
//
//  Created by 想当当 on 14-6-9.
//  Copyright (c) 2014年 想当当. All rights reserved.
//

import UIKit

class RootViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    var tableView: UITableView?
    var items: NSArray?
    
    override func viewDidLoad() {
        //super.viewDidLoad()

        // Do any additional setup after loading the view.
    
        self.title = "Swift"
        self.items = ["UILabel", "UIButton", "UIImageView", "UISlider", "UIWebView", "UISegmentedControl", "UISwitch", "UITextField", "UIScrollView", "UISearchBar", "UIPageControl", "UIDatePicker", "UIPickerView", "UIProgressView", "UITextView", "UIToolbar", "UIActionSheet", "UIActivityIndicatorView"]
        self.tableView = UITableView(frame:self.view.frame, style:UITableViewStyle.Plain)
        self.tableView!.delegate = self
        self.tableView!.dataSource = self
        self.tableView!.registerClass(UITableViewCell.self, forCellReuseIdentifier: "Cell")
        self.view?.addSubview(self.tableView)
    }
    
    // UITableViewDataSource Methods
    func numberOfSectionsInTableView(tableView: UITableView!) -> Int
    {
        return 1
    }
    
    func tableView(tableView: UITableView!, numberOfRowsInSection section: Int) -> Int
    {
        return self.items!.count
    }
    
    func tableView(tableView: UITableView!, cellForRowAtIndexPath indexPath: NSIndexPath!) -> UITableViewCell!
    {
        let cell = tableView.dequeueReusableCellWithIdentifier("Cell", forIndexPath: indexPath) as UITableViewCell!
        cell.accessoryType = UITableViewCellAccessoryType.DisclosureIndicator
        cell.textLabel.text = self.items?.objectAtIndex(indexPath.row) as String
        
        return cell
    }
    
    // UITableViewDelegate Methods
    func tableView(tableView: UITableView!, didSelectRowAtIndexPath indexPath: NSIndexPath!)
    {
        self.tableView!.deselectRowAtIndexPath(indexPath, animated: true)
        
        var detailViewController = DetailViewController()
        detailViewController.title = self.items?.objectAtIndex(indexPath.row)  as String
        self.navigationController.pushViewController(detailViewController, animated:true)
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
