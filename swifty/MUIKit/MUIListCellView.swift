//
//  MUIListCellView.swift
//  swifty
//
//  Created by 想当当 on 14-6-18.
//  Copyright (c) 2014年 想当当. All rights reserved.
//

import UIKit

class MUIListCellView: UIView {
    
    //var title:UILabel?
    
    //var imagesView:UIView?
    
    @lazy var title: UILabel = {
        let label = UILabel()
        label.setTranslatesAutoresizingMaskIntoConstraints(false)
        label.font = UIFont(name: "Avenir", size: 18)
        label.textColor = UIColor(hex:0x661A2B)
        label.numberOfLines = 2;
        label.lineBreakMode = NSLineBreakMode.ByWordWrapping
        
        return label
    }()
    
    @lazy var lineView: UIView = {
        let view = UIView()
        view.setTranslatesAutoresizingMaskIntoConstraints(false)
        view.backgroundColor = UIColor(red: 0.906, green: 0.914, blue: 0.918, alpha: 1)
        return view
    }()
    
    init(frame: CGRect) {
        super.init(frame: frame)
        // Initialization code
        
        self.backgroundColor = UIColor(hex:0xFFEDEE)
        self.sizeToFit()
        self.autoresizingMask = (UIViewAutoresizing.FlexibleWidth | UIViewAutoresizing.FlexibleHeight)
        
        
//        self.backgroundColor = UIColor(hex:0xffffff)
//        
//        self.title = UILabel()
//                
//        self.title!.textColor = UIColor(hex:0x666666)
//        
//        self.title!.lineBreakMode = NSLineBreakMode.ByTruncatingTail
//        
//        self.title!.numberOfLines = 2;
//        
//        self.insertSubview(self.title!, atIndex:1)
//    
//        self.imagesView = UIView(frame:CGRect(x:0.0,y:10.0,width:320.0,height:60.0))
//        
//        self.imagesView!.backgroundColor = UIColor(hex:0x00ffff)
//        
//        self.insertSubview(self.imagesView, aboveSubview: self.title!)
//        
//        self.sizeToFit()
//        
//        //self.layer.borderWidth = 2.0
//        
//        self.autoresizingMask = (UIViewAutoresizing.FlexibleWidth | UIViewAutoresizing.FlexibleHeight)
//        
//        
//        var viewsDictionary = ["title":self.title!, "imagesView":self.imagesView]
//        self.addConstraints(NSLayoutConstraint.constraintsWithVisualFormat("V:|-5-[title]-5-|", options: nil, metrics: nil, views: viewsDictionary))
        
        //self.setTranslatesAutoresizingMaskIntoConstraints(false)
        //self.backgroundColor = UIColor(white: 1, alpha: 0.95)
        self.addSubview(title)
        //self.addSubview(lineView)

        let views = [
            "title": title,
            "lineView": lineView
        ]
        
        let metrics = [
            "verticalMargin": 8.0,
            "horizontalMargin": 10.0
        ]
        
        //self.addConstraints(NSLayoutConstraint.constraintsWithVisualFormat("|-[title]|", options: nil, metrics: nil, views: views))
        self.addConstraints(NSLayoutConstraint.constraintsWithVisualFormat("H:|-(horizontalMargin)-[title]-(horizontalMargin)-|", options: NSLayoutFormatOptions.AlignAllRight, metrics: metrics, views: views))
        
        self.addConstraints(NSLayoutConstraint.constraintsWithVisualFormat("V:|-(10)-[title]-(>=10)-|", options: NSLayoutFormatOptions.AlignAllRight, metrics: metrics, views: views))
        
        //self.addConstraints(NSLayoutConstraint.constraintsWithVisualFormat("H:|-(horizontalMargin)-[lineView]-(horizontalMargin)-|", options: nil, metrics: metrics, views: views))
        
        //self.addConstraints(NSLayoutConstraint.constraintsWithVisualFormat("V:|-(verticalMargin)-[title]-(verticalMargin)-[lineView(1)]|", options: nil, metrics: metrics, views: views))
        
        //self.addConstraints(NSLayoutConstraint.constraintsWithVisualFormat("|[lineView]|", options: nil, metrics: metrics, views: views))
        

        
//        addConstraints(NSLayoutConstraint.constraintsWithVisualFormat("|-[title]|", options: nil, metrics: nil, views: views))
//        addConstraints(NSLayoutConstraint.constraintsWithVisualFormat("V:|-(verticalMargin)-[title]-(verticalMargin)-[lineView(1)]|", options: nil, metrics: metrics, views: views))
//        addConstraints(NSLayoutConstraint.constraintsWithVisualFormat("|[lineView]|", options: nil, metrics: metrics, views: views))
        
        
    }


    // Only override drawRect: if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func drawRect(rect: CGRect)
    {
        //println(self.frame)
        // Drawing code
        
//        self.title!.setTranslatesAutoresizingMaskIntoConstraints(false)
//        self.imagesView!.setTranslatesAutoresizingMaskIntoConstraints(false)
        
        
        //        var viewsDictionary = ["usernameLabel" : usernameLabel, "avatarImageView" : avatarImageView, "postTextView" : postTextView]
        //        contentView.addConstraints(NSLayoutConstraint.constraintsWithVisualFormat("|-5-[avatarImageView(50)]-5-[postTextView]-5-|", options: nil, metrics: nil, views: viewsDictionary))
        //        contentView.addConstraints(NSLayoutConstraint.constraintsWithVisualFormat("V:|-5-[avatarImageView(50)]-(>=5)-|", options: nil, metrics: nil, views: viewsDictionary))
        //        contentView.addConstraints(NSLayoutConstraint.constraintsWithVisualFormat("V:|-5-[usernameLabel][postTextView]-(>=5)-|", options: .AlignAllLeft, metrics: nil, views: viewsDictionary))
        
        
        
        
        
        //constraints
//        var constraints = NSLayoutConstraint[]()
//        
//        constraints += NSLayoutConstraint(item: self.title!,
//            attribute: NSLayoutAttribute.Left,
//            relatedBy: NSLayoutRelation.Equal,
//            toItem: self,
//            attribute: NSLayoutAttribute.Left,
//            multiplier: 1.0,
//            constant: 10.0)
//        
//        constraints += NSLayoutConstraint(item: self.title!,
//            attribute: NSLayoutAttribute.Top,
//            relatedBy: NSLayoutRelation.Equal,
//            toItem: self,
//            attribute: NSLayoutAttribute.Top,
//            multiplier: 1.0,
//            constant: 10.0)
//        
//        constraints += NSLayoutConstraint(item: self.title!,
//            attribute: NSLayoutAttribute.Right,
//            relatedBy: NSLayoutRelation.Equal,
//            toItem: self,
//            attribute: NSLayoutAttribute.Right,
//            multiplier: 1.0,
//            constant: -10.0)
//        
//        constraints += NSLayoutConstraint(item: self.title!,
//            attribute: NSLayoutAttribute.Bottom,
//            relatedBy: NSLayoutRelation.Equal,
//            toItem: self.imagesView!,
//            attribute: NSLayoutAttribute.Bottom,
//            multiplier: 1.0,
//            constant: -5.0)
//        
//        constraints += NSLayoutConstraint(item: self.imagesView!,
//            attribute: NSLayoutAttribute.Left,
//            relatedBy: NSLayoutRelation.Equal,
//            toItem: self,
//            attribute: NSLayoutAttribute.Left,
//            multiplier: 1.0,
//            constant: 10.0)
//        
//        constraints += NSLayoutConstraint(item: self.imagesView!,
//            attribute: NSLayoutAttribute.Right,
//            relatedBy: NSLayoutRelation.Equal,
//            toItem: self,
//            attribute: NSLayoutAttribute.Right,
//            multiplier: 1.0,
//            constant: -10.0)
//        
//        constraints += NSLayoutConstraint(item: self.imagesView!,
//            attribute: NSLayoutAttribute.Bottom,
//            relatedBy: NSLayoutRelation.Equal,
//            toItem: self,
//            attribute: NSLayoutAttribute.Bottom,
//            multiplier: 1.0,
//            constant: -10.0)
//        
//        constraints += NSLayoutConstraint(item: self.imagesView!,
//            attribute: NSLayoutAttribute.Top,
//            relatedBy: NSLayoutRelation.Equal,
//            toItem: self.title,
//            attribute: NSLayoutAttribute.Top,
//            multiplier: 1.0,
//            constant: 10.0)
//        
//        self.addConstraints(constraints)
        
        

    }


}
