//
//  AppDelegate.swift
//  YYQ-Swift
//
//  Created by 豆凯强 on 2020/7/23.
//  Copyright © 2020 dkq. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
    var window: UIWindow?
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        window = UIWindow(frame: UIScreen.main.bounds)
        window?.backgroundColor = UIColor.white
        window?.rootViewController = DTabBarController()
        window?.makeKeyAndVisible()
        return true
    }
}

