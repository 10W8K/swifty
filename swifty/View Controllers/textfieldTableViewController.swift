//
//  textfieldTableViewController.swift
//  swifty
//
//  Created by temu.psc on 14-6-11.
//  Copyright (c) 2014年 想当当. All rights reserved.
//

import UIKit

class textfieldTableViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    var tableView: UITableView?

    var cellIndentifier = "cellIndentifier"

//    init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: NSBundle?) {
//        super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
//        // Custom initialization
//    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
        println(self.view.frame.origin)
        println(self.view.frame.size)
        println(self.view.frame.size.width)
        println(self.view.frame.size.height)
        self.view.backgroundColor = UIColor.whiteColor()

        self.tableView = UITableView(frame:CGRectMake(self.view.frame.origin.x,self.view.frame.origin.y,self.view.frame.size.width,self.view.frame.size.height), style:UITableViewStyle.Plain)
        
        self.tableView!.registerClass(MUITableViewCell.self, forCellReuseIdentifier: cellIndentifier)
        self.tableView!.delegate = self
        self.tableView!.dataSource = self
        // Do any additional setup after loading the view.

        self.view?.addSubview(self.tableView)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // UITableViewDataSource Methods
    func numberOfSectionsInTableView(tableView: UITableView!) -> Int
    {
        return 1
    }
    
    func tableView(tableView: UITableView!, numberOfRowsInSection section: Int) -> Int
    {
        return 5
    }
    
    func tableView(tableView: UITableView!, cellForRowAtIndexPath indexPath: NSIndexPath!) -> UITableViewCell!
    {
        let cell = tableView.dequeueReusableCellWithIdentifier(cellIndentifier, forIndexPath: indexPath) as MUITableViewCell!
        
        cell.accessoryType = UITableViewCellAccessoryType.None
        
//        cell.textLabel.text = "xxx"
//        cell.detailTextLabel.text = "yyy"
        
        var textField = UITextField(frame:CGRectMake(10.0, 10.0, 300.0, 36.0))
        textField.backgroundColor = UIColor.lightGrayColor()
        textField.placeholder = "input text"
        cell.contentView.addSubview(textField)
        
        return cell
        
        
        
    }
    
    func tableView(tableView: UITableView!, heightForRowAtIndexPath indexPath: NSIndexPath!) -> CGFloat {
        return 56.0
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
