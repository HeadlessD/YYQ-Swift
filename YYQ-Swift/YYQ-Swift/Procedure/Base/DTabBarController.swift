//
//  DTabBarController.swift
//  YYQ-Swift
//
//  Created by 豆凯强 on 2020/7/27.
//  Copyright © 2020 dkq. All rights reserved.
//

import UIKit

class DTabBarController: UITabBarController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tabBar.isTranslucent = false
        
        let onePageVC = DHomeViewController(titles: ["推荐","VIP","订阅","排行"], vcs: [DBoutiqueListViewController(),DVIPListViewController(),DSubscibeListViewController(),DRankListViewController()], pageStyle: .naviBarSegment)
        let classVC = DCateListViewController()
        let bookVC = DBookViewController(titles: ["收藏","书单","下载"], vcs: [DCollectListViewController(),DDocumentListViewController(),DDownloadListViewController()], pageStyle: .naviBarSegment)
        let mineVC = DMineViewController()
        
        let VCS = [onePageVC,classVC,bookVC,mineVC]
        let titles = ["首页","分类","书架","我的"]
        let imgs = ["tab_home","tab_class","tab_book","tab_mine"]
        let selImgs = ["tab_home_S","tab_class_S","tab_book_S","tab_mine_S"]
        
        addChildViewController(childVCS: VCS, titles: titles, images: imgs, selectImages: selImgs)
    }
    
    func addChildViewController(childVCS: Array<UIViewController>, titles:Array<String>, images:Array<String>, selectImages:Array<String>){
        for i in 0 ..< childVCS.count {
            let vc =  childVCS[i]
            vc.title = titles[i]
            vc.tabBarItem = UITabBarItem(title: nil, image: UIImage(named: images[i]) , selectedImage: UIImage(named: selectImages[i]))
            if UIDevice.current.userInterfaceIdiom == .phone {
                vc.tabBarItem.imageInsets = UIEdgeInsets(top: 6, left: 0, bottom: -6, right: 0)
            }
            addChild(DNavigationController(rootViewController: vc))
        }
    }
}

//extension DTabBarController{
//    override var preferredStatusBarStyle: UIStatusBarStyle{
//        guard let select = selectedViewController else {
//            return .lightContent
//        }
//        return select.preferredStatusBarStyle
//    }
//}
