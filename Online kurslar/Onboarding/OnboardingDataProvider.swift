//
//  OnboardingDataProvider.swift
//  Online kurslar
//
//  Created by MacBook Pro on 01/02/24.
//

import UIKit

class OnboardingDataProvider: NSObject,UICollectionViewDelegate,UICollectionViewDataSource,UICollectionViewDelegateFlowLayout {
    
    internal var item: [OnboardDM] = [
        OnboardDM(imageV: UIImage(named: "first")!, title: "Find your favorite course", sub: "Our new videos make it easy for you to learn anywhere, there are new videos that will be ready to help you"),
        OnboardDM(imageV: UIImage(named: "second")!, title: "Learn with fun", sub: "Our new videos make it easy for you to learn anywhere, there are new videos that will be ready to help you"),
        OnboardDM(imageV: UIImage(named: "third")!, title: "Get good results", sub: "Our new videos make it easy for you to learn anywhere, there are new videos that will be ready to help you"),
    ]
    weak var collectionView: UICollectionView! {
        didSet {
        collectionView.delegate = self
        collectionView.dataSource = self
        }
    }
    weak var viewController: UIViewController?
    
    init(viewController: UIViewController? = nil) {
        self.viewController = viewController
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        item.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "OnboardingCell", for: indexPath) as? OnboardingCell else {return UICollectionViewCell()}
        cell.updateCell(item: item[indexPath.item])
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height)
    }
    
    
    
}
