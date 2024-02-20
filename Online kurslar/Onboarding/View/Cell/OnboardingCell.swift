//
//  OnboardingCell.swift
//  Online kurslar
//
//  Created by MacBook Pro on 01/02/24.
//

import UIKit

class OnboardingCell: UICollectionViewCell {

    @IBOutlet weak var imageV: UIImageView!
    
    @IBOutlet weak var titleLbl: UILabel!
    
    @IBOutlet weak var textLbl: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    func updateCell(item: OnboardDM){
        imageV.image = item.imageV
        titleLbl.text = item.title
        textLbl.text = item.sub
    }
    
    
}
