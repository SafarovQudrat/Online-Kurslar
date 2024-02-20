//
//  MainTabbar.swift
//  Online kurslar
//
//  Created by MacBook Pro on 11/02/24.
//

import UIKit

class MainTabbar: UITabBarController {

    let homeVC = UINavigationController(rootViewController: HomeVC())
    let mycourseVC = UINavigationController(rootViewController: MycourseVC())
    let balanceVC = UINavigationController(rootViewController: BalanceVC())
    let profileVC = UINavigationController(rootViewController: ProfileVC())
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let apparence = UITabBarAppearance()
        apparence.backgroundColor = .appColor(color: .white)
        self.tabBar.scrollEdgeAppearance = apparence
        self.tabBar.standardAppearance = apparence
        homeVC.tabBarItem = UITabBarItem(title: "Home", image: UIImage(named: "home"), tag: 0)
        mycourseVC.tabBarItem = UITabBarItem(title: "Mycourse", image: UIImage(named: "course"), tag: 1)
        balanceVC.tabBarItem = UITabBarItem(title: "Balance", image: UIImage(named: "balance"), tag: 2)
        profileVC.tabBarItem = UITabBarItem(title: "Profile", image: UIImage(named: "profile"), tag: 3)
        self.viewControllers = [homeVC,mycourseVC,balanceVC,profileVC]
    }
    

   

}
