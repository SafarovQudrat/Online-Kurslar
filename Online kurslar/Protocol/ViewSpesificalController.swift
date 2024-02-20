//
//  ViewSpesificalView.swift
//  Online kurslar
//
//  Created by MacBook Pro on 01/02/24.
//

import UIKit

protocol ViewSpecificController {
    associatedtype RootView: UIView
}
extension ViewSpecificController where Self: UIViewController {
    func view() -> RootView {
        return self.view as! RootView
    }
}
