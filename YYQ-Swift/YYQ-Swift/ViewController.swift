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
        
        let news = runningSum([1,1,1,1,1,1,1,1,1,1,1])
        print(news)
    }
    
    //    runningSum[i] = sum(nums[0]…nums[i]) 。
    
    func runningSum(_ nums: [Int]) -> [Int] {
        var newArr  = nums
        for aa in nums.enumerated() {
            newArr[aa.element] = nums[aa.element] + nums[nums.count - 1]
        }
        
        return newArr
    }
    
}

