//
//  FormViewController.swift
//  swifty
//
//  Created by 想当当 on 14-6-16.
//  Copyright (c) 2014年 想当当. All rights reserved.
//

import UIKit

class ListViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    var posts: NSMutableArray? ,
    tableView: UITableView?
    
    var cellIndentifier = "cellIndentifier"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        self.title = "世界杯"
        
        self.posts = NSMutableArray()
        
        self.tableView = UITableView(frame:self.view.frame, style:UITableViewStyle.Plain)
        self.tableView!.registerClass(UITableViewCell.self, forCellReuseIdentifier: cellIndentifier)
        self.tableView!.delegate = self
        self.tableView!.dataSource = self
        
        self.view.addSubview(self.tableView!)
        
        
        
        //println(self.delegate)
        
        // Do any additional setup after loading the view.
        dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0), {
            //println("DISPATCH_QUEUE_PRIORITY_DEFAULT")
            let path = NSBundle.mainBundle().pathForResource("posts", ofType: "plist")
            self.posts = NSMutableArray(contentsOfFile:path)
            //println(self.posts![0])
            
            dispatch_async(dispatch_get_main_queue(), {
                
                println("当前共有记录:[ \(self.posts!.count) ]条")
                
                self.tableView!.delegate = self
                self.tableView!.dataSource = self
                
                self.tableView!.reloadData()
                println(self.tableView!)
                
                
                });
            
            
            });
        
        
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
    
    //    func loadJSONFile(){
    //        var filePath=NSBundle.mainBundle().pathForResource("file", ofType: "json")
    //        var err: NSError
    //        var jsonData : NSData=NSData.dataWithContentsOfMappedFile(filePath) as NSData
    //        var json: NSDictionary = NSJSONSerialization.JSONObjectWithData(jsonData as NSData, options: NSJSONReadingOptions.MutableContainers, error: nil) as NSDictionary
    //        var results: NSArray = json["item"] as NSArray
    //        self.posts = results
    //    }
    
    
    func numberOfSectionsInTableView(tableView: UITableView!) -> Int {
        return 1
    }
    
    func tableView(tableView: UITableView!, heightForRowAtIndexPath indexPath: NSIndexPath!) -> CGFloat {
        return 56.0
    }
    func tableView(tableView: UITableView!, numberOfRowsInSection section: Int) -> Int {
        return self.posts!.count
    }
    
    
    func tableView(tableView: UITableView!, cellForRowAtIndexPath indexPath: NSIndexPath!) -> UITableViewCell! {
        
        var cell = tableView.dequeueReusableCellWithIdentifier(self.cellIndentifier, forIndexPath: indexPath) as UITableViewCell!
        cell.accessoryType = UITableViewCellAccessoryType.DisclosureIndicator
        cell.textLabel.text = self.posts![indexPath.row]!["title"] as NSString
        return cell
    }
    
    
    
    
    
}
