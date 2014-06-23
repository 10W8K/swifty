//
//  MUIListCellView.swift
//  swifty
//
//  Created by 想当当 on 14-6-18.
//  Copyright (c) 2014年 想当当. All rights reserved.
//

import UIKit

class MUIListCellView: UIView {
    
    @lazy var title: UILabel = {
        let label = UILabel()
        label.setTranslatesAutoresizingMaskIntoConstraints(false)
        label.font = UIFont(name: "Avenir", size: 18)
        label.textColor = UIColor(hex:0x661A2B)
        label.numberOfLines = 2;
        label.lineBreakMode = NSLineBreakMode.ByWordWrapping
        
        
        
        return label
    }()
    

    @lazy var images: UIView = {
        let view = UIView()
        view.setTranslatesAutoresizingMaskIntoConstraints(false)
        //view.backgroundColor = UIColor(hex:0x661A2B)
        view.autoresizingMask = (UIViewAutoresizing.FlexibleWidth | UIViewAutoresizing.FlexibleHeight)
        
        var image     = UIImage(named: "1.jpg")
        var imageView = UIImageView()
        imageView.image = image
        imageView.setTranslatesAutoresizingMaskIntoConstraints(false)
        view.insertSubview(imageView,atIndex:0)
        
        let views = [
            "imageView": imageView
        ]
        
        view.addConstraints(NSLayoutConstraint.constraintsWithVisualFormat("V:|[imageView]|", options: nil, metrics: nil, views: views))
        view.addConstraints(NSLayoutConstraint.constraintsWithVisualFormat("H:|[imageView(96)]-(>=2)-|", options: nil, metrics: nil, views: views))
        
        return view
    }()
    
    init(frame: CGRect) {
        super.init(frame: frame)
        // Initialization code
        
        self.backgroundColor = UIColor(hex:0xFFEDEE)
        self.autoresizingMask = (UIViewAutoresizing.FlexibleWidth | UIViewAutoresizing.FlexibleHeight)

    
        self.insertSubview(self.title, atIndex:0)
        self.insertSubview(self.images, atIndex:0)
        //self.addSubview(lineView)

        let views = [
            "title": title,
            "images": images
        ]
        
        let metrics = [
            "verticalMargin": 8.0,
            "horizontalMargin": 10.0
        ]
        
        //self.addConstraints(NSLayoutConstraint.constraintsWithVisualFormat("|-[title]|", options: nil, metrics: nil, views: views))
        self.addConstraints(NSLayoutConstraint.constraintsWithVisualFormat("H:|-(horizontalMargin)-[title]-(horizontalMargin)-|", options: nil, metrics: metrics, views: views))
        
        self.addConstraints(NSLayoutConstraint.constraintsWithVisualFormat("V:|-(verticalMargin)-[title]-(8)-[images(64)]-(>=verticalMargin)-|", options: nil, metrics: metrics, views: views))
        
        self.addConstraints(NSLayoutConstraint.constraintsWithVisualFormat("H:|-10-[images]-10-|", options: nil, metrics: metrics, views: views))
        
    }

    // Only override drawRect: if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func drawRect(rect: CGRect)
    {
        // Drawing code
    }


}
