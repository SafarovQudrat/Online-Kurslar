//
//  MycourseView.swift
//  Online kurslar
//
//  Created by MacBook Pro on 11/02/24.
//

import UIKit
import SnapKit
class MycourseView: CustomView {
    
    @IBOutlet weak var tableView: UITableView!{
        didSet{
            tableView.register(UINib(nibName: "MyCourseTVC", bundle: nil), forCellReuseIdentifier: "MyCourseTVC")
        }
    }
    @IBOutlet weak var allCourseBtn: UIButton!
    @IBOutlet weak var popBtn: UIButton!{
        didSet{
            popBtn.layer.borderWidth = 1
            popBtn.layer.borderColor = #colorLiteral(red: 0.475826025, green: 0.4803363681, blue: 0.6001288295, alpha: 1)
        }
    }
    @IBOutlet weak var newestBtn: UIButton!{
        didSet{
            newestBtn.layer.borderWidth = 1
            newestBtn.layer.borderColor = #colorLiteral(red: 0.475826025, green: 0.4803363681, blue: 0.6001288295, alpha: 1)
        }
    }
}
