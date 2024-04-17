//
//  Alert.swift
//  Online kurslar
//
//  Created by MacBook Pro on 21/03/24.
//

import UIKit

extension UIViewController {
    func showAlert(title:String,message:String,vc:UIViewController){
        let alertvc = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let cancel = UIAlertAction(title: "Ok", style: .cancel)
        alertvc.addAction(cancel)
        vc.present(alertvc, animated: true)
    }
}
