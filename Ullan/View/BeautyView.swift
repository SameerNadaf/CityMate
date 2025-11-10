//
//  BeautyView.swift
//  Ullan
//
//  Created by Asha on 04/11/25.
//

import UIKit

class BeautyViewController: UIViewController {
    
    @IBOutlet weak var searchBarView: UIView!
    @IBOutlet weak var carouselCollectionView: UICollectionView!
    @IBOutlet weak var groomingServicesCollectionView: UICollectionView!
    @IBOutlet weak var mostBookedServicesCollectionView: UICollectionView!
    @IBOutlet weak var waxingAdBanner: UIImageView!
    @IBOutlet weak var womenSalonCollectionView: UICollectionView!
    @IBOutlet weak var womenSpaCollectionView: UICollectionView!
    @IBOutlet weak var hairAndNailServicesCollectionView: UICollectionView!
    @IBOutlet weak var spaForWomenAdBanner: UIImageView!
    @IBOutlet weak var salonForMenCollectionView: UICollectionView!
    @IBOutlet weak var massageForMenAdBanner: UIImageView!
    @IBOutlet weak var massageForMenCollectionView: UICollectionView!
    
    
    struct GroomingServices {
        let title: String
        let image: String
    }
    
    struct ServicesWithCharge {
        let image: String
        let title: String
        let rating: String
        let amount: String
    }
    
    let carouselImages: [String] = [
        "bmw", "bmw", "bmw", "bmw"
    ]
    
    let groomingServices: [GroomingServices] = [
        GroomingServices(title: "Salon for Women", image: "bmw"),
        GroomingServices(title: "Spa for Women", image: "bmw"),
        GroomingServices(title: "Hair Studio for Women", image: "bmw"),
        GroomingServices(title: "Makeup & Styling Studio", image: "bmw"),
        GroomingServices(title: "Salon for Men", image: "bmw"),
        GroomingServices(title: "Massage for Men", image: "bmw"),
    ]
    
    let mostBookedServices: [ServicesWithCharge] = [
        ServicesWithCharge(image: "bmw", title: "Haircut for men", rating: "4.8 (12k+)", amount: "₹400"),
        ServicesWithCharge(image: "bmw", title: "Beard Trim", rating: "4.6 (9k+)", amount: "₹150"),
        ServicesWithCharge(image: "bmw", title: "Haircut for kids", rating: "4.8 (15k+)", amount: "₹200"),
        ServicesWithCharge(image: "bmw", title: "Basic makeup", rating: "4.6 (8k+)", amount: "₹800"),
        ServicesWithCharge(image: "bmw", title: "Head Massage", rating: "4.8 (4k+)", amount: "₹200"),
        ServicesWithCharge(image: "bmw", title: "Neck massage and shoulder massage", rating: "4.6 (6k+)", amount: "₹600"),
        ServicesWithCharge(image: "bmw", title: "Haircut and beard trim for men", rating: "4.8 (18k+)", amount: "₹500"),
    ]
    
    let womenSalonImages: [String] = [
        "bmw", "bmw", "bmw"
    ]
    
    let womenSpaImages: [String] = [
        "bmw"
    ]
    
    let hairAndNailServices: [ServicesWithCharge] = [
        ServicesWithCharge(image: "bmw", title: "Haircut for women", rating: "4.8 (20k+)", amount: "₹600"),
        ServicesWithCharge(image: "bmw", title: "Nail paint", rating: "4.6 (16k+)", amount: "₹200"),
        ServicesWithCharge(image: "bmw", title: "Haircut for kids", rating: "4.8 (8k+)", amount: "₹200"),
        ServicesWithCharge(image: "bmw", title: "Basic makeup", rating: "4.6 (14k+)", amount: "₹800"),
        ServicesWithCharge(image: "bmw", title: "Head Massage", rating: "4.8 (22k+)", amount: "₹500"),
        ServicesWithCharge(image: "bmw", title: "Neck massage and shoulder massage", rating: "4.6 (17k+)", amount: "₹800"),
        ServicesWithCharge(image: "bmw", title: "Haircut and Makeup for women", rating: "4.8 (32k+)", amount: "₹1200"),
    ]
    
    let menSalonImages: [String] = [
        "bmw", "bmw", "bmw", "bmw", "bmw", "bmw"
    ]
    
    let menMassageImages: [String] = [
        "bmw", "bmw"
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        searchBarView.layer.cornerRadius = searchBarView.frame.size.height / 2
        searchBarView.layer.borderWidth = 1
        searchBarView.layer.borderColor = UIColor.lightGray.cgColor
        searchBarView.clipsToBounds = true
        
        // CollectionView Delegates
        carouselCollectionView.delegate = self
        carouselCollectionView.dataSource = self
        groomingServicesCollectionView.delegate = self
        groomingServicesCollectionView.dataSource = self
        mostBookedServicesCollectionView.delegate = self
        mostBookedServicesCollectionView.dataSource = self
        womenSalonCollectionView.delegate = self
        womenSalonCollectionView.dataSource = self
        womenSpaCollectionView.delegate = self
        womenSpaCollectionView.dataSource = self
        hairAndNailServicesCollectionView.delegate = self
        hairAndNailServicesCollectionView.dataSource = self
        salonForMenCollectionView.delegate = self
        salonForMenCollectionView.dataSource = self
        massageForMenCollectionView.delegate = self
        massageForMenCollectionView.dataSource = self
        
        // Ad banner Image styling
        waxingAdBanner.layer.cornerRadius = 10
        waxingAdBanner.clipsToBounds = true
        spaForWomenAdBanner.layer.cornerRadius = 10
        spaForWomenAdBanner.clipsToBounds = true
        massageForMenAdBanner.layer.cornerRadius = 10
        massageForMenAdBanner.clipsToBounds = true
        
        carouselCollectionView.register(UINib(nibName: "ImageCarouselCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "carouselCell")
        
        if let layout = carouselCollectionView.collectionViewLayout as? UICollectionViewFlowLayout {
            layout.scrollDirection = .horizontal
            layout.minimumLineSpacing = 20
            layout.sectionInset = UIEdgeInsets(top: 0, left: 20, bottom: 0, right: 20)
        }
        
        if let layout2 = groomingServicesCollectionView.collectionViewLayout as? UICollectionViewFlowLayout {
            layout2.scrollDirection = .vertical
            layout2.minimumLineSpacing = 12
            layout2.minimumInteritemSpacing = 12
            layout2.sectionInset = UIEdgeInsets(top: 0, left: 12, bottom: 0, right: 12)
        }
        
        mostBookedServicesCollectionView.register(UINib(nibName: "ServiceCardCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "ServiceCardCell")
        
        if let layout3 = mostBookedServicesCollectionView.collectionViewLayout as? UICollectionViewFlowLayout {
            layout3.scrollDirection = .horizontal
            layout3.minimumLineSpacing = 16
            layout3.sectionInset = UIEdgeInsets(top: 0, left: 20, bottom: 0, right: 20)
        }
        
        womenSalonCollectionView.register(UINib(nibName: "PosterCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "posterImageCell")
        
        if let layout4 = womenSalonCollectionView.collectionViewLayout as? UICollectionViewFlowLayout {
            layout4.scrollDirection = .horizontal
            layout4.minimumLineSpacing = 16
            layout4.sectionInset = UIEdgeInsets(top: 0, left: 20, bottom: 0, right: 20)
        }
        
        womenSpaCollectionView.register(UINib(nibName: "PosterCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "posterImageCell")
        
        if let layout5 = womenSpaCollectionView.collectionViewLayout as? UICollectionViewFlowLayout {
            layout5.scrollDirection = .horizontal
            layout5.minimumLineSpacing = 16
            layout5.sectionInset = UIEdgeInsets(top: 0, left: 20, bottom: 0, right: 20)
        }
        
        hairAndNailServicesCollectionView.register(UINib(nibName: "ServiceCardCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "ServiceCardCell")
        
        if let layout6 = hairAndNailServicesCollectionView.collectionViewLayout as? UICollectionViewFlowLayout {
            layout6.scrollDirection = .horizontal
            layout6.minimumLineSpacing = 16
            layout6.minimumInteritemSpacing = 16
            layout6.sectionInset = UIEdgeInsets(top: 0, left: 20, bottom: 0, right: 20)
        }
        
        salonForMenCollectionView.register(UINib(nibName: "PosterCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "posterImageCell")
        
        if let layout7 = salonForMenCollectionView.collectionViewLayout as? UICollectionViewFlowLayout {
            layout7.scrollDirection = .horizontal
            layout7.minimumLineSpacing = 16
            layout7.sectionInset = UIEdgeInsets(top: 0, left: 20, bottom: 0, right: 20)
        }
        
        massageForMenCollectionView.register(UINib(nibName: "PosterCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "posterImageCell")
        
        if let layout8 = massageForMenCollectionView.collectionViewLayout as? UICollectionViewFlowLayout {
            layout8.scrollDirection = .horizontal
            layout8.minimumLineSpacing = 16
            layout8.sectionInset = UIEdgeInsets(top: 0, left: 20, bottom: 0, right: 20)
        }
    
    }
}

extension BeautyViewController: UICollectionViewDelegateFlowLayout, UICollectionViewDataSource {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        if collectionView == carouselCollectionView {
            return carouselImages.count
            
        } else if collectionView == groomingServicesCollectionView {
            return groomingServices.count
            
        } else if collectionView == mostBookedServicesCollectionView {
            return mostBookedServices.count
            
        } else if collectionView == womenSalonCollectionView {
            return womenSalonImages.count
            
        } else if collectionView == womenSpaCollectionView {
            return womenSpaImages.count
            
        } else if collectionView == hairAndNailServicesCollectionView {
            return hairAndNailServices.count
            
        } else if collectionView == salonForMenCollectionView {
            return menSalonImages.count
            
        } else if collectionView == massageForMenCollectionView {
            return menMassageImages.count
            
        }
        
        return 0
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        if collectionView == carouselCollectionView {
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "carouselCell", for: indexPath) as! ImageCarouselCollectionViewCell
            let imageName = carouselImages[indexPath.row]
            cell.imageView.image = UIImage(named: imageName)
            return cell
            
        } else if collectionView == groomingServicesCollectionView {
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "groomingCell", for: indexPath) as! GroomingServicesCollectionViewCell
            let item = groomingServices[indexPath.row]
            cell.imageView.image = UIImage(named: item.image)
            cell.titleLabel.text = item.title
            return cell
            
        } else  if collectionView == mostBookedServicesCollectionView {
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "ServiceCardCell", for: indexPath) as! ServiceCardCollectionViewCell
            let item = mostBookedServices[indexPath.row]
            cell.imageView.image = UIImage(named: item.image)
            cell.titleLabel.text = item.title
            cell.ratingLabel.text = item.rating
            cell.amountLabel.text = item.amount
            return cell
            
        } else if collectionView == womenSalonCollectionView {
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "posterImageCell", for: indexPath) as! PosterCollectionViewCell
            let imageName = womenSalonImages[indexPath.row]
            cell.imageView.image = UIImage(named: imageName)
            return cell
            
        } else if collectionView == womenSpaCollectionView {
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "posterImageCell", for: indexPath) as! PosterCollectionViewCell
            let imageName = womenSpaImages[indexPath.row]
            cell.imageView.image = UIImage(named: imageName)
            return cell
            
        } else if collectionView == salonForMenCollectionView {
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "posterImageCell", for: indexPath) as! PosterCollectionViewCell
            let imageName = menSalonImages[indexPath.row]
            cell.imageView.image = UIImage(named: imageName)
            return cell
            
        } else if collectionView == massageForMenCollectionView {
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "posterImageCell", for: indexPath) as! PosterCollectionViewCell
            let imageName = menMassageImages[indexPath.row]
            cell.imageView.image = UIImage(named: imageName)
            return cell
            
        } else {
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "ServiceCardCell", for: indexPath) as! ServiceCardCollectionViewCell
            let item = mostBookedServices[indexPath.row]
            cell.imageView.image = UIImage(named: item.image)
            cell.titleLabel.text = item.title
            cell.ratingLabel.text = item.rating
            cell.amountLabel.text = item.amount
            return cell
            
        }
    }
    
    func collectionView(_ collectionView: UICollectionView,
                        layout collectionViewLayout: UICollectionViewLayout,
                        sizeForItemAt indexPath: IndexPath) -> CGSize {
        if collectionView == carouselCollectionView {
            if UIDevice.current.userInterfaceIdiom == .phone {
                return CGSize(width: UIScreen.main.bounds.width, height: 200)
            } else {
                return CGSize(width: 440, height: 200)
            }
            
        } else if collectionView == groomingServicesCollectionView {
            let itemsPerRow: CGFloat = 3
            let spacing: CGFloat = 12
            
            // Account for section insets or safe area insets
            let sectionInsets = (collectionView.collectionViewLayout as? UICollectionViewFlowLayout)?.sectionInset ?? .zero
            let safeAreaInsets = collectionView.safeAreaInsets
            
            let totalHorizontalInsets = sectionInsets.left + sectionInsets.right + safeAreaInsets.left + safeAreaInsets.right
            let totalSpacing = (itemsPerRow - 1) * spacing + totalHorizontalInsets
            let width = (collectionView.bounds.width - totalSpacing) / itemsPerRow
            return CGSize(width: floor(width), height: 140)
            
        } else if collectionView == mostBookedServicesCollectionView {
            return CGSize(width: 160, height: 260)
            
        } else if collectionView == womenSalonCollectionView {
            return CGSize(width: 160, height: 200)
            
        } else if collectionView == womenSpaCollectionView {
            return CGSize(width: 160, height: 200)
            
        } else if collectionView == hairAndNailServicesCollectionView {
            return CGSize(width: 160, height: 260)
            
        } else if collectionView == salonForMenCollectionView {
            return CGSize(width: 160, height: 200)
            
        } else if collectionView == massageForMenCollectionView {
            return CGSize(width: 160, height: 200)
            
        }

        return CGSize.zero
    }
}
