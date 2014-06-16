//
//  FormViewController.swift
//  swifty
//
//  Created by 想当当 on 14-6-16.
//  Copyright (c) 2014年 想当当. All rights reserved.
//

import UIKit

class FormViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    var tableView: MUITableView?
    var cellIndentifier = "cellIndentifier"
    var itemArray = [
        ["手机"],
        ["手机号码"]
    ]


    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        //self.title = "表单"
        
        //println("MUIFormView")
        //如果使用UITableView做Form,最好设置style:UITableViewStyle.Grouped
        self.tableView = MUITableView(frame:self.view.frame, style:UITableViewStyle.Grouped)
        //self.tableView = MUITableView(frame:CGRect(x:0.0,y:120.0,width:320.0,height:80.0), style:UITableViewStyle.Grouped)
        self.tableView!.registerClass(MUITableViewCell.self, forCellReuseIdentifier: cellIndentifier)
        self.tableView!.delegate = self
        self.tableView!.dataSource = self
        //self.tableView!.separatorStyle  = UITableViewCellSeparatorStyle.None
        self.tableView!.separatorInset = UIEdgeInsetsZero
        //self.tableView!.userInteractionEnabled = false
        self.tableView!.scrollEnabled = false
        self.view?.addSubview(self.tableView)
        
        
        //println(self.navigationController.navigationBar.frame)
        //CGRect frame = self.tableView.frame;
        //frame.size.height = self.tableView.contentSize.height;
        //self.tableView.frame = frame;

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
    // UITableViewDataSource Methods
    func numberOfSectionsInTableView(tableView: UITableView!) -> Int {
        return 1
    }
    
    func tableView(tableView: UITableView!, numberOfRowsInSection section: Int) -> Int {
        return self.itemArray.count
    }
    
    func tableView(tableView: UITableView!, cellForRowAtIndexPath indexPath: NSIndexPath!) -> UITableViewCell! {
        
        let cell = tableView.dequeueReusableCellWithIdentifier(cellIndentifier, forIndexPath: indexPath) as MUITableViewCell!
        
        //remove the arrow
        cell.accessoryType = UITableViewCellAccessoryType.None
        
        
        for item in self.itemArray[indexPath.row] {
            var contentView = MUITextFieldWithLabelView(frame:cell.contentView.frame)
            contentView.label.text = item
            cell.contentView.insertSubview(contentView, atIndex:0)
        }
        
        //tableView自适应的高度在MUITableView内使用autolayout做了处理
        self.tableView!.frame.size.height = self.tableView!.contentSize.height + 64
        
        return cell
        
        
    }
    
    func tableView(tableView: UITableView!, heightForRowAtIndexPath indexPath: NSIndexPath!) -> CGFloat {
        return 40.0
    }

}
