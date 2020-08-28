//
//  DCommentViewController.swift
//  YYQ-Swift
//
//  Created by 豆凯强 on 2020/8/25.
//  Copyright © 2020 dkq. All rights reserved.
//

import UIKit

class DCommentViewController: DBaseViewController {

    weak var delegate: DComicViewWillEndDraggingDelegate?
    var detailStatic: DetailStaticModel?
    var commentList: CommentListModel? {
        didSet {
            guard let commentList = commentList?.commentList else { return }
            let viewModelArray = commentList.compactMap { (comment) -> DCommentViewModel? in
                return DCommentViewModel(model: comment)
            }
            listArray.append(contentsOf: viewModelArray)
        }
    }
    
    private var listArray = [DCommentViewModel]()

    
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
