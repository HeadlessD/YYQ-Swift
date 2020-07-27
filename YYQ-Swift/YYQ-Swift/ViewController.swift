//
//  ViewController.swift
//  YYQ-Swift
//
//  Created by 豆凯强 on 2020/7/23.
//  Copyright © 2020 dkq. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let lab = UILabel(frame: CGRect(x: 10, y: 10, width: 90, height: 90))
        lab.backgroundColor = UIColor.red
        view.addSubview(lab)
        
        let news = kidsWithCandies([1,3,9], 4)
        print(news)
    }
    
    func kidsWithCandies(_ candies: [Int], _ extraCandies: Int) -> [Bool] {
        var mix = 0
        var boArr = [Bool]()
        for i in 0 ..< candies.count {
            if mix < candies[i]{
                mix = candies[i]
            }
        }
        for i in 0 ..< candies.count {
            if candies[i] + extraCandies >= mix {
                boArr.append(true)
            }else{
                boArr.append(false)
            }
        }
        return boArr
    }
}

