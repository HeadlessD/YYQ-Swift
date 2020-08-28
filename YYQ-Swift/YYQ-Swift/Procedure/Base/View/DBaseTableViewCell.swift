//
//  DBaseTableViewCell.swift
//  YYQ-Swift
//
//  Created by 豆凯强 on 2020/8/25.
//  Copyright © 2020 dkq. All rights reserved.
//

import UIKit
import Reusable

class DBaseTableViewCell: UITableViewCell, Reusable {

    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        selectionStyle = .none
        configUI()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    open func configUI() {}

}
