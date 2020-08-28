//
//  DDetailViewController.swift
//  YYQ-Swift
//
//  Created by 豆凯强 on 2020/8/25.
//  Copyright © 2020 dkq. All rights reserved.
//

import UIKit

class DDetailViewController: DBaseViewController {
    
    weak var delegate: DComicViewWillEndDraggingDelegate?
    
    var detailStatic: DetailStaticModel?
    var detailRealtime: DetailRealtimeModel?
    var guessLike: GuessLikeModel?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    func reloadData() {
//        tableView.reloadData()
    }

}
