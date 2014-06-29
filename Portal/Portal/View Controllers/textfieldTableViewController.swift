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

    override func viewDidLoad() {
        super.viewDidLoad()
        
        println(self.view.frame.origin)
        println(self.view.frame.size)
        println(self.view.frame.size.width)
        println(self.view.frame.size.height)
        self.view.backgroundColor = UIColor.whiteColor()

        self.tableView = UITableView(frame:self.view.frame,style:UITableViewStyle.Grouped)
        
        self.tableView!.registerClass(UITableViewCell.self, forCellReuseIdentifier: cellIndentifier)
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
        return 1
    }
    
    func tableView(tableView: UITableView!, cellForRowAtIndexPath indexPath: NSIndexPath!) -> UITableViewCell!
    {
        var cell = tableView.dequeueReusableCellWithIdentifier(cellIndentifier, forIndexPath: indexPath) as UITableViewCell!
        
        if(!cell) {
            cell = nil
        }
        
//        cell = UITableViewCell(style: UITableViewCellStyle.Value1, reuseIdentifier: cellIndentifier)
        
        cell.accessoryType = UITableViewCellAccessoryType.None
        
        cell.selectionStyle = UITableViewCellSelectionStyle.None
        
//        cell.textLabel.text = "xxx"
//        cell.detailTextLabel.text = "yyy"
//        cell.imageView
//        cell.contentView
//        cell.backgroundView
//        cell.selectBackgroundView
//        cell.multipleSelectionBackgroundView
//        cell.reuseIdentifier
//        cell.selectionStyle
        
//        var textField = UITextField(frame:CGRectMake(80.0, 0, 100.0, 56.0))
        var textField = MUITextField(frame:CGRectMake(80.0, 0, 100.0, 56.0))

        textField.backgroundColor = UIColor(hex:0xffffff)
        textField.placeholder = "请输入手机号码"
        textField.font = UIFont(name:"Helvetica",size:14)
        
        var label = UILabel(frame:CGRectMake(10.0, 0, 70.0, 56.0))
        label.text = "手机号码："
        label.backgroundColor = UIColor(hex:0xffffff)
        label.font = UIFont(name:"Helvetica",size:14)
        
        cell.contentView.addSubview(textField)
        cell.contentView.addSubview(label)
        
//        var textFieldWithLabel = MUITextFieldWithLabelView(frame:CGRectMake(10.0, 10.0, 300.0, 40.0))
//        textFieldWithLabel.label.text = "手机XXX"
//
//        cell.contentView.addSubview(textFieldWithLabel)

        return cell
        
    }
    
    func tableView(tableView: UITableView!, heightForRowAtIndexPath indexPath: NSIndexPath!) -> CGFloat {
        return 56.0
    }

    func tableView(tableView: UITableView!, willSelectRowAtIndexPath indexPath: NSIndexPath!) -> NSIndexPath! {
        return nil
    }
    
    func tableView(tableView: UITableView!, didSelectRowAtIndexPath indexPath: NSIndexPath!) {
        println("你好，啊")
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
