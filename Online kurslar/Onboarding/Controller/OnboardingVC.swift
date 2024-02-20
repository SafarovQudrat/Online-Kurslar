//
//  OnboardingVC.swift
//  Online kurslar
//
//  Created by MacBook Pro on 01/02/24.
//

import UIKit

class OnboardingVC: UIViewController,ViewSpecificController {
    typealias RootView = OnboardingView
    internal var dataProvider = OnboardingDataProvider()
    var currentIndex = 1
    override func viewDidLoad() {
        super.viewDidLoad()
        apperenceSettings()
    }

    @IBAction func progressBar(_ sender: Any) {
        if currentIndex < 3  {
            currentIndex = currentIndex + 1
            view().circleProgressView.progress = Float(currentIndex)/3.0
        }
            dataProvider.collectionView.scrollToItem(at: IndexPath(item: currentIndex - 1, section: 0), at: .centeredHorizontally, animated: true)
            dataProvider.collectionView.layoutIfNeeded()
      
    }
    
    @objc func rightBtnTapped() {
        let vc = LoginVC()
        self.navigationController?.pushViewController(vc, animated: true)
    }
  
}
extension OnboardingVC {
    func apperenceSettings() {
        dataProvider.viewController = self
        dataProvider.collectionView = view().collectionView
        let rightNavBtn = UIBarButtonItem(title: "Skip", style: .done, target: self, action: #selector(rightBtnTapped))
        let font = UIFont(name: "Poppins", size: 16)
        UIBarItem.appearance().setTitleTextAttributes([NSAttributedString.Key.font:font!], for: .normal)
        rightNavBtn.tintColor = #colorLiteral(red: 0.3623357415, green: 0.3672379255, blue: 0.4915149808, alpha: 1)
        self.navigationItem.rightBarButtonItem = rightNavBtn
        self.navigationController?.apparenceNavigationController(target: self, "", true)

    }
}


