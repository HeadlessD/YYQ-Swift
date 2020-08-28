//
//  UBaseCollectionReusableView.swift
//  YYQ-Swift
//
//  Created by 豆凯强 on 2020/8/24.
//  Copyright © 2020 dkq. All rights reserved.
//

import UIKit
import Reusable

class UBaseCollectionReusableView: UICollectionReusableView, Reusable {
    override init(frame: CGRect) {
        super.init(frame: frame)
        configUI()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    open func configUI() {}
}
