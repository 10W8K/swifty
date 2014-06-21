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
        self.tableView!.separatorInset = UIEdgeInsetsZero
        self.tableView!.autoresizingMask = UIViewAutoresizing.FlexibleHeight|UIViewAutoresizing.FlexibleWidth
        
        
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
                
                //self.tableView!.delegate = self
                //self.tableView!.dataSource = self
                
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
    

    func tableView(tableView: UITableView!, numberOfRowsInSection section: Int) -> Int {
        return self.posts!.count
    }
    
    
    func tableView(tableView: UITableView!, cellForRowAtIndexPath indexPath: NSIndexPath!) -> UITableViewCell! {
        

        
        var cell = tableView.dequeueReusableCellWithIdentifier(self.cellIndentifier, forIndexPath: indexPath) as UITableViewCell!
        cell.accessoryType = UITableViewCellAccessoryType.None
        cell.selectionStyle = UITableViewCellSelectionStyle.Default
        
        //cell.needsUpdateConstraints()
        //cell.layer.borderWidth = 2.0
        
        //cell.layer.borderColor = UIColor(hex:0xff0000).CGColor
        
        //cell.setHighlighted(false,animated:false)
        //cell.accessoryType = UITableViewCellAccessoryType.DisclosureIndicator
        
        //cell.textLabel.text = self.posts![indexPath.row]!["title"] as NSString
        //println(self.posts![indexPath.row]!)
        
        var listCellView = MUIListCellView(frame:cell.contentView.frame)
        listCellView.title!.text = self.posts![indexPath.row]!["title"] as NSString
        
        cell.autoresizingMask = (UIViewAutoresizing.FlexibleWidth | UIViewAutoresizing.FlexibleHeight)
        cell.contentView.autoresizingMask = (UIViewAutoresizing.FlexibleWidth | UIViewAutoresizing.FlexibleHeight)
        //cell.contentView.backgroundColor = UIColor(hex:0xff9900)
        cell.contentView.insertSubview(listCellView, atIndex:0)
        
        //cell.detailTextLabel.text = itemkey
        return cell
    }
    
    // UITableViewDelegate Methods
    func tableView(tableView: UITableView!, didSelectRowAtIndexPath indexPath: NSIndexPath!) {
        self.tableView!.deselectRowAtIndexPath(indexPath, animated: true)
        
        var cell = tableView.dequeueReusableCellWithIdentifier(self.cellIndentifier, forIndexPath: indexPath) as UITableViewCell!
        
        println(cell.frame)
    }

    
    
    
}
