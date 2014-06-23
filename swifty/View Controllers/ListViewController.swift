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
        
        //var jsonDataStr = "{}"
        //var data: NSDictionary = NSJSONSerialization.JSONObjectWithData(jsonDataStr, options: nil, error: nil) as NSDictionary
        

        
        
        self.title = "世界杯"
        
        self.posts = NSMutableArray()
        
        self.tableView = UITableView(frame:self.view.frame, style:UITableViewStyle.Plain)
        self.tableView!.registerClass(UITableViewCell.self, forCellReuseIdentifier: cellIndentifier)
        self.tableView!.delegate = self
        self.tableView!.dataSource = self
        self.tableView!.separatorInset = UIEdgeInsetsZero
        self.tableView!.autoresizingMask = UIViewAutoresizing.FlexibleHeight|UIViewAutoresizing.FlexibleWidth
        
        //self.tableView!.rowHeight = UITableViewAutomaticDimension;
        //self.tableView!.estimatedRowHeight = 88.0; // set to whatever your "average" cell height is
        
        
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
        
        
        
        let r = HttpRequest(url: "https://itunes.apple.com/lookup?id=909253")
        r.GET({(error: NSError?, headers: NSDictionary?, data: NSData?) -> () in
            if (error) {
                println("Error: \(error!.localizedDescription)")
            } else {
                var json = JSONValue(data!)
                
                //var results:NSMutableArray = json["results"] as NSMutableArray
                //println(results)
            }
        })
        
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
        var cell = UITableViewCell(style: UITableViewCellStyle.Default, reuseIdentifier: self.cellIndentifier + "_" + String(indexPath.row))
        cell.accessoryType = UITableViewCellAccessoryType.None
        cell.selectionStyle = UITableViewCellSelectionStyle.Default
        //cell.autoresizingMask = UIViewAutoresizing.FlexibleWidth | UIViewAutoresizing.FlexibleHeight
        //cell.contentView.autoresizingMask = UIViewAutoresizing.FlexibleWidth | UIViewAutoresizing.FlexibleHeight
        var listCellView = MUIListCellView(frame:cell.contentView.frame)
        listCellView.title.text = self.posts![indexPath.row]!["title"] as NSString
        //println("....")
        //println(listCellView.frame)
        cell.contentView.insertSubview(listCellView, atIndex:0)
        
        //cell.contentView.sizeToFit()
        //cell.sizeToFit()
        
        
        return cell
    }
    
    // UITableViewDelegate Methods
    func tableView(tableView: UITableView!, didSelectRowAtIndexPath indexPath: NSIndexPath!) {
        self.tableView!.deselectRowAtIndexPath(indexPath, animated: true)
        
        //var cell = tableView.dequeueReusableCellWithIdentifier(self.cellIndentifier, forIndexPath: indexPath) as UITableViewCell!
        //cell.highlighted = false
        //println(cell.frame)
    }

    func tableView(tableView: UITableView!, heightForRowAtIndexPath indexPath: NSIndexPath!) -> CGFloat{
        var cell = UITableViewCell(style: UITableViewCellStyle.Default, reuseIdentifier: self.cellIndentifier + "_" + String(indexPath.row))
        //println(cell.contentView.frame)
        return 128.0
    }
    func tableView(tableView: UITableView!, estimatedHeightForRowAtIndexPath indexPath: NSIndexPath!) -> CGFloat{
        var cell = UITableViewCell(style: UITableViewCellStyle.Default, reuseIdentifier: self.cellIndentifier + "_" + String(indexPath.row))
        println(cell.contentView.frame)
        return 44.0
    }
}
