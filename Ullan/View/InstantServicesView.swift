//
//  InstantServicesView.swift
//  Ullan
//
//  Created by Asha on 09/11/25.
//

import UIKit

class InstantServicesViewController: UIViewController {
    
    @IBOutlet weak var serviceReachTime: UILabel!
    @IBOutlet weak var instantServicesCollectionView: UICollectionView!
    @IBOutlet weak var imageCarouselCollectionView: UICollectionView!
    
    struct InstantServices {
        let title: String
        let subtitle: String
        let image: String
    }
    
    let instantServicesItems: [InstantServices] = [
        InstantServices(title: "Spa for women", subtitle: "48 mins", image: "bmw"),
        InstantServices(title: "Salon Prime for men", subtitle: "48 mins", image: "bmw"),
        InstantServices(title: "Bathroom Cleaning", subtitle: "48 mins", image: "bmw"),
        InstantServices(title: "Kitchen Cleaning", subtitle: "48 mins", image: "bmw"),
        InstantServices(title: "Sofa & Carpet Cleaning", subtitle: "48 mins", image: "bmw"),
        InstantServices(title: "Electrician", subtitle: "48 mins", image: "bmw"),
        InstantServices(title: "Plumber", subtitle: "48 mins", image: "bmw"),
        InstantServices(title: "Festive lights Installation", subtitle: "48 mins", image: "bmw"),
        InstantServices(title: "Geyser", subtitle: "48 mins", image: "bmw"),
        InstantServices(title: "AC", subtitle: "48 mins", image: "bmw"),
        InstantServices(title: "Washing Machine", subtitle: "48 mins", image: "bmw"),
        InstantServices(title: "Air Cooler", subtitle: "48 mins", image: "bmw"),
    ]
    
    let carouselImages: [String] = [
        "bmw", "bmw", "bmw", "bmw"
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        instantServicesCollectionView.delegate = self
        instantServicesCollectionView.dataSource = self
        imageCarouselCollectionView.delegate = self
        imageCarouselCollectionView.dataSource = self
        
        instantServicesCollectionView.register(UINib(nibName: "InstantServicesCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "instantServicesCell")
        
        if let layout = instantServicesCollectionView.collectionViewLayout as? UICollectionViewFlowLayout {
            layout.scrollDirection = .vertical
            layout.minimumLineSpacing = 12
            layout.minimumInteritemSpacing = 10
            layout.sectionInset = UIEdgeInsets(top: 0, left: 20, bottom: 0, right: 20)
        }
        
        imageCarouselCollectionView.register(UINib(nibName: "ImageCarouselCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "carouselCell")
        
        if let layout2 = imageCarouselCollectionView.collectionViewLayout as? UICollectionViewFlowLayout {
            layout2.scrollDirection = .horizontal
            layout2.minimumLineSpacing = 20
            layout2.sectionInset = UIEdgeInsets(top: 0, left: 20, bottom: 0, right: 20)
        }

        
    }
    
}

extension InstantServicesViewController: UICollectionViewDelegateFlowLayout, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        if collectionView == instantServicesCollectionView {
            return instantServicesItems.count
            
        } else if collectionView == imageCarouselCollectionView {
            return carouselImages.count
            
        }
        
        return 0
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if collectionView == instantServicesCollectionView {
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "instantServicesCell", for: indexPath) as! InstantServicesCollectionViewCell
            let item = instantServicesItems[indexPath.row]
            cell.imageView.image = UIImage(named: item.image)
            cell.titleLabel.text = item.title
            cell.subtitleLabel.text = item.subtitle
            return cell
            
        } else if collectionView == imageCarouselCollectionView {
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "carouselCell", for: indexPath) as! ImageCarouselCollectionViewCell
            let imageName = carouselImages[indexPath.row]
            cell.imageView.image = UIImage(named: imageName)
            return cell
            
        }
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "instantServicesCell", for: indexPath) as! InstantServicesCollectionViewCell
        let item = instantServicesItems[indexPath.row]
        cell.imageView.image = UIImage(named: item.image)
        cell.titleLabel.text = item.title
        cell.subtitleLabel.text = item.subtitle
        return cell
        
    }
    
    func collectionView(_ collectionView: UICollectionView,
                        layout collectionViewLayout: UICollectionViewLayout,
                        sizeForItemAt indexPath: IndexPath) -> CGSize {
        if collectionView == instantServicesCollectionView {
            let itemsPerRow: CGFloat = 4
            let spacing: CGFloat = 12
            
            let sectionInsets = (collectionView.collectionViewLayout as? UICollectionViewFlowLayout)?.sectionInset ?? .zero
            let safeAreaInsets = collectionView.safeAreaInsets
            
            let totalHorizontalInsets = sectionInsets.left + sectionInsets.right + safeAreaInsets.left + safeAreaInsets.right
            let totalSpacing = (itemsPerRow - 1) * spacing + totalHorizontalInsets
            let width = (collectionView.bounds.width - totalSpacing) / itemsPerRow
            return CGSize(width: floor(width), height: 150)
            
        } else if collectionView == imageCarouselCollectionView {
            if UIDevice.current.userInterfaceIdiom == .phone {
                return CGSize(width: UIScreen.main.bounds.width, height: 200)
            } else {
                return CGSize(width: 440, height: 200)
            }
            
        }
        
        return CGSize.zero
    }
    
}
