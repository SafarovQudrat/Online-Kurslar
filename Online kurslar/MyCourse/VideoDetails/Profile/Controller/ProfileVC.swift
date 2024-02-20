//
//  ProfileVC.swift
//  Online kurslar
//
//  Created by MacBook Pro on 20/02/24.
//

import UIKit

class ProfileVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        apparenceSettings()
    }


   

}

extension ProfileVC {
    func apparenceSettings(){
        self.navigationController?.apparannceNavBar(self, "Profile")
       
    }
}
