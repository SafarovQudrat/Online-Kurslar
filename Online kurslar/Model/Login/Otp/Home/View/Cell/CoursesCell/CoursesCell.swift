//
//  CoursesCell.swift
//  Online kurslar
//
//  Created by MacBook Pro on 05/02/24.
//

import UIKit

class CoursesCell: UICollectionViewCell {

    @IBOutlet weak var courseImage: UIImageView!
    @IBOutlet weak var titleLbl: UILabel!
    @IBOutlet weak var textLbl: UILabel!
    @IBOutlet weak var ratingLbl: UILabel!
    @IBOutlet weak var watchesLbl: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        courseImage.layer.maskedCorners = [.layerMinXMinYCorner,.layerMaxXMinYCorner]
        courseImage.layer.cornerRadius = 8
    }

}
