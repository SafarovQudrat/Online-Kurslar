//
//  OnboardingCoordinator.swift
//  Online kurslar
//
//  Created by MacBook Pro on 23/02/24.
//

import UIKit

final class OnboardingCoordinator: Coordinator {
    var childCoordinators = [Coordinator]()
    
    var navigationController: UINavigationController
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func start() {
        let vc = OnboardingVC()
        vc.coordinator = self
        navigationController.pushViewController(vc, animated: true)
    }
    
    func pushToLoginVC(){
        let vc = LoginVC()
        vc.coordinator = self
        navigationController.pushViewController(vc, animated: true)
    }
    func pushToRegisterVC(){
        let vc = RegisterVC()
        vc.coordinator = self
        navigationController.pushViewController(vc, animated: true)
    }
    func pushToOtp(){
        let vc = OtpVC()
        vc.coordinator = self
        navigationController.pushViewController(vc, animated: true)
        
    }
    func pushToForgotPass(){
        let vc = ForgotPassVC()
        vc.coordinator = self
        navigationController.pushViewController(vc, animated: true)
    }
    func pushToResetPass(){
        let vc = ResetPassVC()
        vc.coordinator = self
        navigationController.pushViewController(vc, animated: true)
    }
    func popToLoginFromResetPass(){
        let vc = LoginVC()
        vc.coordinator = self
        navigationController.popToRootViewController(animated: true)
    }
    func changeRootViewController(){
        let vc = MainTabbar()
        vc.coordinator = self
        cache.set(true, forKey: "isTabbar")
        let window = UIApplication.shared.keyWindow
        window?.rootViewController = vc
    }
}
