//
//  AppDelegate.swift
//  Online kurslar
//
//  Created by MacBook Pro on 31/01/24.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

var window: UIWindow?
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        window = UIWindow(frame: UIScreen.main.bounds)
        let vc = MainTabbar()
        window?.rootViewController = vc
        window?.makeKeyAndVisible()
       
        
        return true
    }

   

}

