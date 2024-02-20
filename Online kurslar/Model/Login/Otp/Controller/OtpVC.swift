//
//  OtpVC.swift
//  Online kurslar
//
//  Created by MacBook Pro on 04/02/24.
//

import UIKit

class OtpVC: UIViewController,ViewSpecificController,UITextFieldDelegate {
    typealias RootView = OtpView
    
    var timer: Timer?
    var time = 59
    override func viewDidLoad() {
        super.viewDidLoad()

        apperenceSettings()
    }
    override func viewWillAppear(_ animated: Bool) {
        view().tf1.becomeFirstResponder()
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(action), userInfo: nil, repeats: true)
        view().timerBtn.isHidden = true
        view().timerLbl.isHidden = false
    }

    

}

extension OtpVC {
    func apperenceSettings() {
        self.navigationController?.apparenceNavigationController(target: self, "Verification code", true)
        view().tf1.addTarget(self, action: #selector(textDidChange), for: UIControl.Event.editingChanged)
        view().tf2.addTarget(self, action: #selector(textDidChange), for: UIControl.Event.editingChanged)
        view().tf3.addTarget(self, action: #selector(textDidChange), for: UIControl.Event.editingChanged)
        view().tf4.addTarget(self, action: #selector(textDidChange), for: UIControl.Event.editingChanged)
    }
  
}
//MARK: Actions
extension OtpVC {
    @objc func action () {
        if time <= 0 {
            timer?.invalidate()
            view().timerBtn.isHidden = false
            view().timerLbl.isHidden = true
        } else {
            time = time - 1
        }
        if time < 10 {
            view().timerLbl.text = "Vaqt: 0:0\(time)"
        } else {
            view().timerLbl.text = "Vaqt: 0:\(time)"
        }
    }
   
    @objc func textDidChange(_ textField: UITextField) {
        let text = textField.text
        if text?.utf16.count == 1 {
            switch textField {
            case view().tf1:
                view().tf2.becomeFirstResponder()
                break
            case view().tf2:
                view().tf3.becomeFirstResponder()
                break
            case view().tf3:
                view().tf4.becomeFirstResponder()
                break
            case view().tf4:
                view().tf4.resignFirstResponder()
                break
                
            default:
                break
            }
        }else {
            view().tf1.text = ""
            view().tf2.text = ""
            view().tf3.text = ""
            view().tf4.text = ""
            view().tf1.becomeFirstResponder()
        }
    }
    @IBAction func timerTapped(_ sender: UIButton) {
        time = 59
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(action), userInfo: nil, repeats: true)
        view().timerBtn.isHidden = true
        view().timerLbl.isHidden = false
        
        
    }
}
