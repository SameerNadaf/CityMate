//
//  NativeView.swift
//  Ullan
//
//  Created by Asha on 03/11/25.
//

import UIKit

class NativeView: UIViewController {
    
    @IBOutlet weak var collectionView: UICollectionView!
    @IBOutlet weak var mainPosterImage: UIImageView!
    @IBOutlet weak var smartLockPosterImage: UIImageView!
    @IBOutlet weak var secondaryCollectionView: UICollectionView!
    @IBOutlet weak var scrollView: UIScrollView!
    
    let images = ["bmw", "bmw", "bmw", "bmw"]
    let secondImages = ["bmw", "bmw", "bmw", "bmw"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        collectionView.dataSource = self
        collectionView.delegate = self
        
        secondaryCollectionView.dataSource = self
        secondaryCollectionView.delegate = self
        
        mainPosterImage.layer.cornerRadius = 10
        mainPosterImage.clipsToBounds = true
        
        smartLockPosterImage.layer.cornerRadius = 10
        smartLockPosterImage.clipsToBounds = true
        
        if let layout = collectionView.collectionViewLayout as? UICollectionViewFlowLayout {
            layout.scrollDirection = .horizontal
            layout.minimumLineSpacing = 16
            layout.sectionInset = UIEdgeInsets(top: 0, left: 16, bottom: 0, right: 16)
        }
        
        if let layout2 = secondaryCollectionView.collectionViewLayout as? UICollectionViewFlowLayout {
            layout2.scrollDirection = .horizontal
            layout2.minimumLineSpacing = 16
            layout2.sectionInset = UIEdgeInsets(top: 0, left: 16, bottom: 0, right: 16)
        }
        
    }
}

extension NativeView: UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView,
                        numberOfItemsInSection section: Int) -> Int {
        if collectionView == self.collectionView {
            return images.count
        } else {
            return secondImages.count
        }
    }
    
    func collectionView(_ collectionView: UICollectionView,
                        cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "imageCell", for: indexPath) as! ImageCollectionViewCell
        
        // Choose data source based on which collection view is calling
        if collectionView == self.collectionView {
            cell.imageView.image = UIImage(named: images[indexPath.item])
        } else {
            cell.imageView.image = UIImage(named: secondImages[indexPath.item])
        }
        
        cell.layer.cornerRadius = 10
        cell.layer.masksToBounds = true
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView,
                        layout collectionViewLayout: UICollectionViewLayout,
                        sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 250, height: collectionView.frame.height)
    }
}
