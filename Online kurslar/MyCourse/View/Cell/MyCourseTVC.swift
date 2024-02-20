//
//  MyCourseTVC.swift
//  Online kurslar
//
//  Created by MacBook Pro on 19/02/24.
//

import UIKit

class MyCourseTVC: UITableViewCell {

    @IBOutlet weak var courseImage: UIImageView!
    @IBOutlet weak var titleLbl: UILabel!
    @IBOutlet weak var textLbl: UILabel!
    @IBOutlet weak var progressView: UIProgressView!
    @IBOutlet weak var progressLbl: UILabel!
    @IBOutlet weak var retingLbl: UILabel!
    @IBOutlet weak var watchesLbl: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        courseImage.layer.maskedCorners = [.layerMinXMinYCorner,.layerMinXMaxYCorner]
        courseImage.layer.cornerRadius = 8
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
