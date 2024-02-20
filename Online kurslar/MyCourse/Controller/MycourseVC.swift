//
//  MycourseVC.swift
//  Online kurslar
//
//  Created by MacBook Pro on 11/02/24.
//

import UIKit

class MycourseVC: UIViewController,ViewSpecificController {

    typealias RootView = MycourseView
    var dataProvider = MyCourseDataProvider()
    override func viewDidLoad() {
        super.viewDidLoad()

        apparenceSettings()
    }

}
extension MycourseVC {
    func apparenceSettings() {
        self.navigationController?.apparannceNavBar(self, "My Course")
        dataProvider.viewController = self
        dataProvider.tableView = view().tableView
    }
    
}
