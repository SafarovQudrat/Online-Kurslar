//
//  RegisterVC.swift
//  Online kurslar
//
//  Created by MacBook Pro on 04/02/24.
//

import UIKit

class RegisterVC: UIViewController,ViewSpecificController {
    typealias RootView = RegisterView
    
    override func viewDidLoad() {
        super.viewDidLoad()
        apparenceSettings()
        
    }
    
    
}

extension RegisterVC {
    func apparenceSettings() {
        self.navigationController?.apparenceNavigationController(target: self, "Let’s Sign Up ", true)
    }
}


//MARK: Actions
extension RegisterVC {
 
    @IBAction func loginBtnTapped(_ sender: Any) {
        self.navigationController?.popViewController(animated: true)
    }
    @IBAction func eyeTapped(_ sender: UIButton) {
        if view().passwordTF.isSecureTextEntry {
            sender.setImage(UIImage(systemName: "eye.slash"), for: .normal)
            view().passwordTF.isSecureTextEntry = false
        }else {
            sender.setImage(UIImage(systemName: "eye"), for: .normal)
            view().passwordTF.isSecureTextEntry = true
        }
    }
    @IBAction func registerTapped(_ sender: UIButton) {
        let vc = OtpVC()
        self.navigationController?.pushViewController(vc, animated: true)
    }
}
