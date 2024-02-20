//
//  ResetPassVC.swift
//  Online kurslar
//
//  Created by MacBook Pro on 04/02/24.
//

import UIKit

class ResetPassVC: UIViewController,ViewSpecificController {
    typealias RootView = ResetPassView
    

    override func viewDidLoad() {
        super.viewDidLoad()

       apparenceSettings()
    }

}

extension ResetPassVC {
    func apparenceSettings() {
        self.navigationController?.apparenceNavigationController(target: self, "Reset Password", true)
    }
}
//MARK: Actions
extension ResetPassVC {
    @IBAction func confirmBtnTapped(_ sender: UIButton) {
        self.navigationController?.popToRootViewController(animated: true)
    }
    @IBAction func newPassBtnTapped(_ sender: UIButton) {
        if view().newPassTF.isSecureTextEntry {
            sender.setImage(UIImage(systemName: "eye.slash"), for: .normal)
            view().newPassTF.isSecureTextEntry = false
        }else {
            sender.setImage(UIImage(systemName: "eye"), for: .normal)
            view().newPassTF.isSecureTextEntry = true
        }
    }
    @IBAction func confirmPassBtnTapped(_ sender: UIButton) {
        if view().confirmPassTF.isSecureTextEntry {
            sender.setImage(UIImage(systemName: "eye.slash"), for: .normal)
            view().confirmPassTF.isSecureTextEntry = false
        }else {
            sender.setImage(UIImage(systemName: "eye"), for: .normal)
            view().confirmPassTF.isSecureTextEntry = true
        }
    }
    
}
