//
//  OnboardDM.swift
//  Online kurslar
//
//  Created by MacBook Pro on 01/02/24.
//

import UIKit

struct OnboardDM {
    var imageV: UIImage
    var title: String
    var sub: String
}


struct Courses{
    var image: UIImage
    var courseType: String
    var courseName: String
    var rating: String
    var views: String
    var type: Popularity
}

enum Popularity {
    case popular
    case newest
}

struct LanguagesDM {
    var image: UIImage?
    var language: String
    var isSelect: Bool
}

struct ShopDM {
    var image: UIImage?
    var name: String
    var cost: String
    
}
