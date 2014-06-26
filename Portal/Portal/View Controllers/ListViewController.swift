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
        self.tableView!.separatorColor = UIColor(hex:0x661A2B)
        self.tableView!.autoresizingMask = UIViewAutoresizing.FlexibleHeight|UIViewAutoresizing.FlexibleWidth
        
        var backgroundView = UIView()
        backgroundView.backgroundColor = UIColor(hex:0xE2E4F4)
        backgroundView.frame = self.view.frame
        self.tableView!.backgroundView = backgroundView
        
        
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
        


        
        //var jsonParser = SBJson4Parser()
        
        
        let r = HttpRequest(url: "https://itunes.apple.com/lookup?id=909253")
        r.GET({(error: NSError?, headers: NSDictionary?, data: NSData?) -> () in
            if (error) {
                println("Error: \(error!.localizedDescription)")
            } else {
                var jsonData : AnyObject! = NSJSONSerialization.JSONObjectWithData(data, options: NSJSONReadingOptions.AllowFragments, error: nil)
                var results : NSArray! = jsonData.objectForKey("results") as NSArray
                //println(results)
                for item:AnyObject in results as NSArray{
                    //println(item)
                    println(item.objectForKey("amgArtistId"))
                }
            }
        })
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
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
        var listCellView = MUIListCellView(frame:cell.contentView.frame)
        listCellView.title.text = self.posts![indexPath.row]!["title"] as NSString
        cell.contentView.insertSubview(listCellView, atIndex:0)

        return cell
    }
    
    // UITableViewDelegate Methods
    func tableView(tableView: UITableView!, didSelectRowAtIndexPath indexPath: NSIndexPath!) {
        self.tableView!.deselectRowAtIndexPath(indexPath, animated: true)
    }

    func tableView(tableView: UITableView!, heightForRowAtIndexPath indexPath: NSIndexPath!) -> CGFloat{
        var cell = UITableViewCell(style: UITableViewCellStyle.Default, reuseIdentifier: self.cellIndentifier + "_" + String(indexPath.row))
        //println(cell.contentView.frame)
        return 140.0
    }
    func tableView(tableView: UITableView!, estimatedHeightForRowAtIndexPath indexPath: NSIndexPath!) -> CGFloat{
        var cell = UITableViewCell(style: UITableViewCellStyle.Default, reuseIdentifier: self.cellIndentifier + "_" + String(indexPath.row))
        println(cell.contentView.frame)
        return 44.0
    }
}
