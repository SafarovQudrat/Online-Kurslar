//
//  OnboardingView.swift
//  Online kurslar
//
//  Created by MacBook Pro on 01/02/24.
//

import UIKit
import SRCircleProgress
final class OnboardingView: CustomView {
  
    @IBOutlet weak var collectionView: UICollectionView!{
        didSet{
            collectionView.register(UINib(nibName: "OnboardingCell", bundle: nil), forCellWithReuseIdentifier: "OnboardingCell")
        }
    }
    
    @IBOutlet weak var circleProgressView: SRCircleProgress!{
        didSet {
            circleProgressView.progress = 1/3
        }
    }
    
    
   
    
}
