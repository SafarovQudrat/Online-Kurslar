//
//  HomeVC.swift
//  Online kurslar
//
//  Created by MacBook Pro on 05/02/24.
//

import UIKit
import SnapKit
class HomeVC: UIViewController,ViewSpecificController {
    typealias RootView = HomeView
    internal var dataProvider = HomeDataProvider()
    override func viewDidLoad() {
        super.viewDidLoad()

        apparenceSettings()
    }


}
extension HomeVC {
    func apparenceSettings() {
        dataProvider.viewController = self
        dataProvider.collectionView = view().collectionView
        setNavBar()
    }
    
    func setNavBar() {
        let searchController = UISearchController()
        searchController.searchBar.placeholder = "Search"
        self.navigationItem.searchController = searchController
        let appearance = UINavigationBarAppearance()
        appearance.configureWithOpaqueBackground()
        appearance.backgroundColor = .appColor(color: .white)
        self.navigationController?.navigationBar.standardAppearance = appearance
        self.navigationController?.navigationBar.scrollEdgeAppearance = appearance
        let titleView = UIView()
        titleView.frame = .init(x: 0, y: 0, width: UIScreen.main.bounds.width, height: 50)
        let imageView = UIImageView(image: UIImage(named: "profileImage"))
        imageView.layer.cornerRadius = 21
        let hiLbl = UILabel()
        hiLbl.font = UIFont(name: "Poppins", size: 12)
        hiLbl.textColor = .appColor(color: .gray2)
        hiLbl.text = "Hello!"
        let nameLbl = UILabel()
        nameLbl.font = UIFont(name: "Poppins - medium", size: 16)
        nameLbl.textColor = .appColor(color: .black1)
        nameLbl.text = "Qudrat"
        titleView.addSubview(imageView)
        titleView.addSubview(hiLbl)
        titleView.addSubview(nameLbl)
        imageView.snp.makeConstraints { make in
            make.left.equalTo(16)
            make.bottom.equalTo(8)
            make.width.height.equalTo(42)
        }
        nameLbl.snp.makeConstraints { make in
            make.left.equalTo(imageView.snp_rightMargin).offset(16)
            make.bottom.equalTo(8)
        }
        hiLbl.snp.makeConstraints { make in
            make.left.equalTo(imageView.snp_rightMargin).offset(16)
            make.bottom.equalTo(nameLbl.snp_topMargin).offset(-8)
        }
        self.navigationItem.titleView = titleView
    }
    
    
    
}
