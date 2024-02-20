//
//  CustomView.swift
//  Online kurslar
//
//  Created by MacBook Pro on 01/02/24.
//

import UIKit

class CustomView: UIView {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        backColor()
    }
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        backColor()
    }
    func backColor() {
        self.backgroundColor = .appColor(color: .background)
        
    }
}
