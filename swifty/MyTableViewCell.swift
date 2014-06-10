//
//  MyTableViewCell.swift
//  swifty
//
//  Created by temu.psc on 14-6-10.
//  Copyright (c) 2014年 想当当. All rights reserved.
//

import UIKit

class MyTableViewCell: UITableViewCell {

    init(style: UITableViewCellStyle, reuseIdentifier: String) {
//        super.init(style: style, reuseIdentifier: reuseIdentifier)
        super.init(style: UITableViewCellStyle.Subtitle, reuseIdentifier: reuseIdentifier)
        // Initialization code
//        self.textColor = UIColor.blueColor()
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
