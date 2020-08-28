//
//  DComicViewController.swift
//  YYQ-Swift
//
//  Created by 豆凯强 on 2020/8/25.
//  Copyright © 2020 dkq. All rights reserved.
//

import UIKit

protocol DComicViewWillEndDraggingDelegate: class {
    func comicWillEndDragging(_ scrollView: UIScrollView)
}

class DComicViewController: DBaseViewController {
    
    private var comicId : Int = 0
    private lazy var mainScrollView : UIScrollView = {
        let ms = UIScrollView()
        ms.delegate = self
        return ms
    }()
    
    private lazy var detailVC : DDetailViewController = {
        let dc = DDetailViewController()
        dc.delegate = self
        return dc
    }()
    
    private lazy var chapterVC : DChapterViewController = {
        let cc = DChapterViewController()
        cc.delegate = self
        return cc
    }()
    
    private lazy var commentVC : DCommentViewController = {
        let cc = DCommentViewController()
        cc.delegate = self
        return cc
    }()
    
    private lazy var navigationBarY : CGFloat = {
        return navigationController?.navigationBar.frame.maxY ?? 0
    }()
    
    private lazy var pageVC : DPageViewController = {
        return DPageViewController(titles: ["详情", "目录", "评论"], vcs: [detailVC, chapterVC, commentVC], pageStyle: .topTabbar)
    }()
    
    private lazy var headView : DComicHead = {
        return DComicHead(frame: CGRect(x: 0, y: 0, width: view.frame.width, height: navigationBarY + 150))
    }()
    
    private var detailStatic: DetailStaticModel?
    private var detailRealtime: DetailRealtimeModel?
    
    convenience init(comicid: Int) {
        self.init()
        self.comicId = comicid
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        edgesForExtendedLayout = .top
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.setNavigationBarHidden(false, animated: true)
        UIApplication.changeOrientationTo(landscapeRight: false)
        loadData()
    }
    
    private func loadData(){
        let group = DispatchGroup()
        group.enter()
        ApiLoadingProvider.request(DApi.detailStatic(comicid: comicId), model: DetailStaticModel.self) { [weak self](detailStatic) in
            self?.detailStatic = detailStatic
            self?.headView.detailStatic = detailStatic?.comic
            self?.detailVC.detailStatic = detailStatic
            self?.chapterVC.detailStatic = detailStatic
            self?.commentVC.detailStatic = detailStatic
            
            ApiProvider.request(DApi.commentList(object_id: detailStatic?.comic?.comic_id ?? 0,thread_id: detailStatic?.comic?.thread_id ?? 0,page: -1),model: CommentListModel.self ,completion: { [weak self] (commentList) in
                self?.commentVC.commentList = commentList
                group.leave()
            })
        }
              group.enter()
        ApiProvider.request(DApi.guessLike, model: GuessLikeModel.self) { (returnData) in
            self.detailVC.guessLike = returnData
            group.leave()
        }
        
        group.notify(queue: DispatchQueue.main) {
            self.detailVC.reloadData()
            self.chapterVC.reloadData()
            self.commentVC.reloadData()
        }
        
        
        
    }
    
}

extension DComicViewController : UIScrollViewDelegate, DComicViewWillEndDraggingDelegate{
    
}
