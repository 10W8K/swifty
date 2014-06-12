//
//  MUITableViewCell.swift
//  swifty
//
//  Created by 想当当 on 14-6-12.
//  Copyright (c) 2014年 想当当. All rights reserved.
//

import UIKit

class MUITableViewCell: UITableViewCell {

    init(style: UITableViewCellStyle, reuseIdentifier: String) {
        //super.init(style: style, reuseIdentifier: reuseIdentifier)
        super.init(style: UITableViewCellStyle.Subtitle, reuseIdentifier: reuseIdentifier)
        // Initialization code
        
        //self.contentView = ContentTableViewCell()
    }

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        // Configure the view for the selected state
    }

}

class ContentTableViewCell: UIView {
    init(frame: CGRect) {
        super.init(frame: frame)
        // Initialization code
    }
    // Only override drawRect: if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func drawRect(rect: CGRect){
        // Drawing code
        
    }
}

