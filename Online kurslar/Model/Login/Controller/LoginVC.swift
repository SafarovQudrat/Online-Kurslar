//
//  LoginVC.swift
//  Online kurslar
//
//  Created by MacBook Pro on 03/02/24.
//

import UIKit

class LoginVC: UIViewController,ViewSpecificController {
    typealias RootView = LoginView
    override func viewDidLoad() {
        super.viewDidLoad()

        apperenceSettings()
    }
    
    
 
    
}
//MARK: Apperence Settings
extension LoginVC {
    func apperenceSettings() {
        self.navigationController?.apparenceNavigationController(target: self, "Let’s Sign In ", true)
        
    }
}
//MARK: Actions

extension LoginVC {
    
    @IBAction func tapGes(_ sender: Any) {
        view.endEditing(true)
    }
    @IBAction func signUpBtnTapped(_ sender: Any) {
        let vc = RegisterVC()
        self.navigationController?.pushViewController(vc, animated: true)
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
    @IBAction func loginTapped(_ sender: UIButton) {
        let vc = OtpVC()
        self.navigationController?.pushViewController(vc, animated: true)
    }
    @IBAction func forgotPassTapped(_ sender: UIButton){
        let vc = ForgotPassVC()
        self.navigationController?.pushViewController(vc, animated: true)
    }
}
