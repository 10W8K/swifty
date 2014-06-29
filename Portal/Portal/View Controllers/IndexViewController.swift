//
//  RootViewController.swift
//  swifty
//
//  Created by 想当当 on 14-6-9.
//  Copyright (c) 2014年 想当当. All rights reserved.
//

import UIKit

class IndexViewController: BaseMUIViewController, UITableViewDelegate, UITableViewDataSource {
    
    var tableView: UITableView?
    //    var items: NSArray?
    var cellIndentifier = "cellIndentifier"
    
    var itemArray = [
        ["MUILabelWithIconFont":"iconfont标签"],
        ["MUIButton":"按钮"],
        ["MUInputBox":"输入框"],
        ["MUITextFieldWithLabelView":"带标签的输入框"],
        ["MUIFormView":"表单"],
        ["UIImageView":"图片"],
        ["UISlider":"轮播"],
        ["UIWebView":"webview"],
        ["UISegmentedControl":"分段控制"],
        ["UISwitch":"开关"],
        ["UIScrollView":"滚动"],
        ["UISearchBar":"搜索"],
        ["UIPageControl":"分页"],
        ["UIDatePicker":"日期选择"],
        ["UIPickerView":"滚轮控制"],
        ["UIProgressView":"进度条"],
        ["UITextView":"文本显示"],
        ["UIToolbar":"工具栏"],
        ["UIActionSheet":"动作条"],
        ["UIActivityIndicatorView":"我是副文本"]
    ]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        

        //rightBarButtonItem apple icon
        var barButtonItemTitleTextAttributes = [
            NSForegroundColorAttributeName: UIColor(hex:0xcccccc),
            NSFontAttributeName:UIFont(name:"rei",size:24)
        ]
        UIBarButtonItem.appearance().setTitleTextAttributes(barButtonItemTitleTextAttributes, forState: UIControlState.Normal)
        self.navigationItem.rightBarButtonItem = UIBarButtonItem(title: "\U0000F02C", style: .Plain, target: self, action: "showProfile:")
        self.navigationItem.backBarButtonItem = UIBarButtonItem(title:"", style:.Bordered, target:nil, action:nil)
        

        
        let screenWidth = self.view.frame.size.width
        let screenHeight = self.view.frame.size.height
        
        self.view = MUIView(frame:CGRectMake(0,0,screenWidth,screenHeight))
        
        
        // Do any additional setup after loading the view.
        
        self.title = "Swifty"
        
        
        self.tableView = UITableView(frame:self.view.frame, style:UITableViewStyle.Plain)
        self.tableView!.registerClass(MUITableViewCell.self, forCellReuseIdentifier: cellIndentifier)
        self.tableView!.delegate = self
        self.tableView!.dataSource = self
        //self.tableView!.separatorStyle  = UITableViewCellSeparatorStyle.None
        self.tableView!.autoresizingMask = UIViewAutoresizing.FlexibleHeight|UIViewAutoresizing.FlexibleWidth
        
        self.view.addSubview(self.tableView)
        
    }
    
    override func viewWillAppear(animated: Bool) {}
    override func viewDidAppear(animated: Bool) {}
    override func viewWillDisappear(animated: Bool) {}
    override func viewDidDisappear(animated: Bool) {}
    
    // UITableViewDataSource Methods
    func numberOfSectionsInTableView(tableView: UITableView!) -> Int {
        return 1
    }
    
    func tableView(tableView: UITableView!, numberOfRowsInSection section: Int) -> Int {
        return self.itemArray.count
    }
    
    func tableView(tableView: UITableView!, cellForRowAtIndexPath indexPath: NSIndexPath!) -> UITableViewCell! {
        
        let cell = tableView.dequeueReusableCellWithIdentifier(cellIndentifier, forIndexPath: indexPath) as MUITableViewCell!
        
        
        cell.accessoryType = UITableViewCellAccessoryType.DisclosureIndicator
        
        for(itemkey,itemval) in self.itemArray[indexPath.row] {
            cell.textLabel.text = itemval
            cell.detailTextLabel.text = itemkey
        }
        
        return cell
    }
    
    func tableView(tableView: UITableView!, heightForRowAtIndexPath indexPath: NSIndexPath!) -> CGFloat {
        return 56.0
    }
    
    
    // UITableViewDelegate Methods
    func tableView(tableView: UITableView!, didSelectRowAtIndexPath indexPath: NSIndexPath!) {
        self.tableView!.deselectRowAtIndexPath(indexPath, animated: true)
        
        
        
        for itemkey in self.itemArray[indexPath.row].keys {
            if(itemkey == "MUInputBox") {
                var textfieldTableView = textfieldTableViewController()
                textfieldTableView.title = itemkey
                self.navigationController.pushViewController(textfieldTableView, animated:true)
                
            } else {
                var detailViewController = DetailViewController()
                detailViewController.title = itemkey
                self.navigationController.pushViewController(detailViewController, animated:true)
            }
        }
    }
    
    func showProfile(sender: UIBarButtonItem){
        println("showProfile")
    }
    
    override func didRotateFromInterfaceOrientation(fromInterfaceOrientation: UIInterfaceOrientation) {
        //self.tableView!.frame = self.view.frame
    }
    
    override func updateViewConstraints() {
        println("updateViewConstraints")
        super.updateViewConstraints()
        //println("updateViewConstraints")
    }
}
