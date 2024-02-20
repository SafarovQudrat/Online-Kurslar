//
//  Ex+NavController.swift
//  Online kurslar
//
//  Created by MacBook Pro on 04/02/24.
//

import UIKit

extension UINavigationController {
    func apparenceNavigationController(target viewController: UIViewController,_ title: String,_ hasBackButton: Bool){
        viewController.title = title
        let appearance = UINavigationBarAppearance()
        appearance.configureWithOpaqueBackground()
        appearance.backgroundColor = .appColor(color: .white)
        viewController.navigationController?.navigationBar.standardAppearance = appearance
        viewController.navigationController?.navigationBar.scrollEdgeAppearance = appearance
        
        if hasBackButton {
            let backBtn = UIBarButtonItem(image: UIImage(named: "backBtn"), style: .done, target: .none, action: #selector(backBtnTapped))
            viewController.navigationItem.backBarButtonItem = backBtn
            viewController.navigationItem.backBarButtonItem?.tintColor = .clear
        }
        
    }
    
    @objc func backBtnTapped() {
        self.navigationController?.popViewController(animated: true)
    }
    
    func apparannceNavBar(_ target: UIViewController, _ title: String){
        let appearance = UINavigationBarAppearance()
        appearance.configureWithOpaqueBackground()
        appearance.backgroundColor = .appColor(color: .white)
        target.navigationController?.navigationBar.standardAppearance = appearance
        target.navigationController?.navigationBar.scrollEdgeAppearance = appearance
        let titleView = UIView()
        let titleLbl = UILabel()
        titleLbl.font = UIFont(name: "Poppins-medium", size: 16)
        titleLbl.textColor = .appColor(color: .black1)
        titleLbl.text = title
        titleView.addSubview(titleLbl)
        titleLbl.snp.makeConstraints { make in
            make.left.equalTo(8)
            make.bottom.equalTo(10)
        }
        titleView.frame = .init(x: 0, y: 0, width: UIScreen.main.bounds.width, height: 50)
        target.navigationItem.titleView = titleView
    }
    
    
    
}
