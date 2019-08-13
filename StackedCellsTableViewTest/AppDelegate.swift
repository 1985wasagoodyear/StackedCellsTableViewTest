//
//  AppDelegate.swift
//  StackedCellsTableViewTest
//
//  Created by K Y on 8/12/19.
//  Copyright © 2019 K Y. All rights reserved.
//

import UIKit

@UIApplicationMain
final class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        window = UIWindow(frame: UIScreen.main.bounds)
        window?.rootViewController = TestViewController()
        window?.makeKeyAndVisible()
        return true
    }

}

