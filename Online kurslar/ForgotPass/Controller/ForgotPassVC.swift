//
//  ForgotPassVC.swift
//  Online kurslar
//
//  Created by MacBook Pro on 04/02/24.
//

import UIKit

class ForgotPassVC: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        apparenceSettings()
        
    }
    
}

extension ForgotPassVC {
    func apparenceSettings() {
        self.navigationController?.apparenceNavigationController(target: self, "Forgot Password", true)
    }
}

//MARK: Actions
extension ForgotPassVC {
    @IBAction func sendCodeBtnTapped(_ sender: UIButton) {
        let vc = ResetPassVC()
        self.navigationController?.pushViewController(vc, animated: true)
    }
}
