//
//  DChapterViewController.swift
//  YYQ-Swift
//
//  Created by 豆凯强 on 2020/8/25.
//  Copyright © 2020 dkq. All rights reserved.
//

import UIKit

class DChapterViewController: DBaseViewController {

    weak var delegate: DComicViewWillEndDraggingDelegate?

    var detailStatic: DetailStaticModel?
    var detailRealtime: DetailRealtimeModel?

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    func reloadData() {
//        tableView.reloadData()
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
