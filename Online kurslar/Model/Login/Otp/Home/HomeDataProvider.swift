//
//  DataProvider.swift
//  Online kurslar
//
//  Created by MacBook Pro on 05/02/24.
//

import UIKit

class HomeDataProvider: NSObject,UICollectionViewDelegate,UICollectionViewDataSource,UICollectionViewDelegateFlowLayout {
    
   weak var viewController:UIViewController?
    weak var collectionView: UICollectionView! {
        didSet{
            collectionView.dataSource = self
            collectionView.delegate = self
        }
    }
    init(viewController: UIViewController? = nil) {
        self.viewController = viewController
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
       
        return 20
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        guard let courseCell = collectionView.dequeueReusableCell(withReuseIdentifier: "CoursesCell", for: indexPath) as? CoursesCell else {return UICollectionViewCell()}
        courseCell.layer.cornerRadius = 8
        return courseCell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
       
        return CGSize(width: (self.collectionView.frame.width - 16)/2, height: 200)
    }
    
    
}
