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
    var cellIndentifier = "cellIndentifier"
    var airports: Dictionary<String, String> = ["TYO": "Tokyo", "DUB": "Dublin"]
    var ss = [["TYO": "Tokyo"],["TYO1": "Tokyo1"]]
    var itemArray = [["UILabel":"标签"], ["UIButton":"按钮"], ["UIImageView":"图片"], ["UISlider":"轮播"], ["UIWebView":"webview"], ["UISegmentedControl":"分段控制"], ["UISwitch":"开关"], ["UITextField":"文字输入"], ["UIScrollView":"滚动"], ["UISearchBar":"搜索"], ["UIPageControl":"分页"], ["UIDatePicker":"日期选择"], ["UIPickerView":"滚轮控制"], ["UIProgressView":"进度条"], ["UITextView":"文本显示"], ["UIToolbar":"工具栏"], ["UIActionSheet":"动作条"], ["UIActivityIndicatorView":"我是副文本"],["MUIButton":"按钮"]]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    
        self.title = "Swift"
        self.items = ["UILabel", "UIButton", "UIImageView", "UISlider", "UIWebView", "UISegmentedControl", "UISwitch", "UITextField", "UIScrollView", "UISearchBar", "UIPageControl", "UIDatePicker", "UIPickerView", "UIProgressView", "UITextView", "UIToolbar", "UIActionSheet", "UIActivityIndicatorView","MUIButton"]
        
        self.tableView = UITableView(frame:self.view.frame, style:UITableViewStyle.Plain)
        
        self.tableView!.registerClass(MyTableViewCell.self, forCellReuseIdentifier: cellIndentifier)
        self.tableView!.delegate = self
        self.tableView!.dataSource = self
//        self.tableView!.separatorStyle  = UITableViewCellSeparatorStyle.None
        
        self.view?.addSubview(self.tableView)
    }
    
    // UITableViewDataSource Methods
    func numberOfSectionsInTableView(tableView: UITableView!) -> Int
    {
        return 1
    }
    
    func tableView(tableView: UITableView!, numberOfRowsInSection section: Int) -> Int
    {
        return self.itemArray.count
    }
    
    func tableView(tableView: UITableView!, cellForRowAtIndexPath indexPath: NSIndexPath!) -> UITableViewCell!
    {
        let cell = tableView.dequeueReusableCellWithIdentifier(cellIndentifier, forIndexPath: indexPath) as MyTableViewCell!
       
        cell.accessoryType = UITableViewCellAccessoryType.DisclosureIndicator
        
        for(itemkey,itemval) in itemArray[indexPath.row] {
            println(itemkey)
            println(itemval)
            cell.textLabel.text = itemkey
            cell.detailTextLabel.text = itemval
        }
        
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
