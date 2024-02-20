//
//  BalanceVC.swift
//  Online kurslar
//
//  Created by MacBook Pro on 20/02/24.
//

import UIKit

class BalanceVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        apparenceSettings()
    }


    

}
extension BalanceVC  {
    func apparenceSettings(){
        self.navigationController?.apparannceNavBar(self, "Balance")
    }
}
