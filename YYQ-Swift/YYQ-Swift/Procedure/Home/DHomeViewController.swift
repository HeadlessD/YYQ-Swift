//
//  DHomeViewController.swift
//  YYQ-Swift
//
//  Created by 豆凯强 on 2020/8/21.
//  Copyright © 2020 dkq. All rights reserved.
//

import UIKit

class DHomeViewController: DPageViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    override func configNavigationBar() {
        super.configNavigationBar()
        navigationItem.rightBarButtonItem = UIBarButtonItem(image: UIImage(named: "nav_search"),
                                                            target: self,
                                                            action: #selector(selectAction))
    }

    @objc private func selectAction() {
        navigationController?.pushViewController(DSearchViewController(), animated: true)
    }
}
