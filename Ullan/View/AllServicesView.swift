//
//  AllServicesView.swift
//  Ullan
//
//  Created by Asha on 07/11/25.
//

import UIKit

class AllServicesViewController: UIViewController {
    
    @IBOutlet weak var servicesCollectionView: UICollectionView!
    @IBOutlet weak var smartDoorLockAd: UIImageView!
    @IBOutlet weak var wallMakeoverAd: UIImageView!
    @IBOutlet weak var curationsCollectionView: UICollectionView!
    @IBOutlet weak var noteworthyCollectionView: UICollectionView!
    @IBOutlet weak var mostBookedServicesCollectionView: UICollectionView!
    @IBOutlet weak var revampAdImage: UIImageView!
    @IBOutlet weak var professionalsCollectionView: UICollectionView!
    @IBOutlet weak var womenSalonCollectionView: UICollectionView!
    @IBOutlet weak var koreanFacialAd: UIImageView! // done
    @IBOutlet weak var womenSpaCollectionView: UICollectionView! // done
    @IBOutlet weak var nativeDoorbellAd: UIImageView! // done
    @IBOutlet weak var cleaningAndPestCollectionView: UICollectionView! // done
    @IBOutlet weak var homePaintingAd: UIImageView! // done
    @IBOutlet weak var appliancesAndServiceCollectionView: UICollectionView! // done
    @IBOutlet weak var homeRepairAndInstallationcollectonview: UICollectionView! // done
    @IBOutlet weak var menMassageCollectionView: UICollectionView! // done
    @IBOutlet weak var waterPurifierAd: UIImageView! // done
    @IBOutlet weak var menSalonCollectionView: UICollectionView! // done
    
    struct AllServices {
        let title: String
        let image: String
    }
    
    struct Noteworthy {
        let title: String
        let image: String
    }
    
    struct ServicesWithCharge {
        let image: String
        let title: String
        let rating: String
        let amount: String
    }
    
    let allServices: [AllServices] = [
        AllServices(title: "Salon for Women", image: "bmw"),
        AllServices(title: "Spa for Women", image: "bmw"),
        AllServices(title: "Hair Studio for Women", image: "bmw"),
        AllServices(title: "Makeup & Styling Studio", image: "bmw"),
        AllServices(title: "Salon for Men", image: "bmw"),
        AllServices(title: "Massage for Men", image: "bmw"),
        AllServices(title: "Makeup & Styling Studio", image: "bmw"),
        AllServices(title: "Salon for Men", image: "bmw"),
        AllServices(title: "Massage for Men", image: "bmw"),
    ]
    
    let curationsAd: [String] = [
        "bmw", "bmw", "bmw", "bmw", "bmw"
    ]
    
    let noteworthyItems: [Noteworthy] = [
        Noteworthy(title: "Salon for Women", image: "bmw"),
        Noteworthy(title: "Spa for Women", image: "bmw"),
        Noteworthy(title: "Hair Studio for Women", image: "bmw"),
        Noteworthy(title: "Makeup & Styling Studio", image: "bmw"),
        Noteworthy(title: "Salon for Men", image: "bmw"),
        Noteworthy(title: "Massage for Men", image: "bmw"),
        Noteworthy(title: "Makeup & Styling Studio", image: "bmw"),
        Noteworthy(title: "Salon for Men", image: "bmw"),
        Noteworthy(title: "Massage for Men", image: "bmw"),
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
    
    let professionalsAd: [String] = [
        "bmw", "bmw", "bmw", "bmw", "bmw"
    ]
    
    let womenSalon: [String] = [
        "bmw", "bmw", "bmw", "bmw", "bmw"
    ]
    
    let womenSpa: [String] = [
        "bmw", "bmw"
    ]
    
    let cleaningAndPestControl: [String] = [
        "bmw", "bmw", "bmw", "bmw", "bmw"
    ]
    
    let appliancesAndServices: [String] = [
        "bmw", "bmw", "bmw", "bmw", "bmw"
    ]
    
    let homeRepairAndInstallation: [ServicesWithCharge] = [
        ServicesWithCharge(image: "bmw", title: "Haircut for men", rating: "4.8 (12k+)", amount: "₹400"),
        ServicesWithCharge(image: "bmw", title: "Beard Trim", rating: "4.6 (9k+)", amount: "₹150"),
        ServicesWithCharge(image: "bmw", title: "Haircut for kids", rating: "4.8 (15k+)", amount: "₹200"),
        ServicesWithCharge(image: "bmw", title: "Basic makeup", rating: "4.6 (8k+)", amount: "₹800"),
        ServicesWithCharge(image: "bmw", title: "Head Massage", rating: "4.8 (4k+)", amount: "₹200"),
        ServicesWithCharge(image: "bmw", title: "Neck massage and shoulder massage", rating: "4.6 (6k+)", amount: "₹600"),
        ServicesWithCharge(image: "bmw", title: "Haircut and beard trim for men", rating: "4.8 (18k+)", amount: "₹500"),
    ]
    
    let menMassage: [String] = [
        "bmw", "bmw"
    ]
    
    let menSalon: [String] = [
        "bmw", "bmw", "bmw", "bmw"
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        servicesCollectionView.delegate = self
        servicesCollectionView.dataSource = self
        curationsCollectionView.delegate = self
        curationsCollectionView.dataSource = self
        noteworthyCollectionView.delegate = self
        noteworthyCollectionView.dataSource = self
        mostBookedServicesCollectionView.delegate = self
        mostBookedServicesCollectionView.dataSource = self
        professionalsCollectionView.delegate = self
        professionalsCollectionView.dataSource = self
        womenSalonCollectionView.delegate = self
        womenSalonCollectionView.dataSource = self
        womenSpaCollectionView.delegate = self
        womenSpaCollectionView.dataSource = self
        cleaningAndPestCollectionView.delegate = self
        cleaningAndPestCollectionView.dataSource = self
        appliancesAndServiceCollectionView.delegate = self
        appliancesAndServiceCollectionView.dataSource = self
        homeRepairAndInstallationcollectonview.delegate = self
        homeRepairAndInstallationcollectonview.dataSource = self
        menMassageCollectionView.delegate = self
        menMassageCollectionView.dataSource = self
        menSalonCollectionView.delegate = self
        menSalonCollectionView.dataSource = self
        
        smartDoorLockAd.layer.cornerRadius = 10
        smartDoorLockAd.clipsToBounds = true
        
        wallMakeoverAd.layer.cornerRadius = 10
        wallMakeoverAd.clipsToBounds = true
        
        revampAdImage.layer.cornerRadius = 10
        revampAdImage.clipsToBounds = true
        
        koreanFacialAd.layer.cornerRadius = 10
        koreanFacialAd.clipsToBounds = true
        
        nativeDoorbellAd.layer.cornerRadius = 10
        nativeDoorbellAd.clipsToBounds = true
        
        homePaintingAd.layer.cornerRadius = 10
        homePaintingAd.clipsToBounds = true
        
        waterPurifierAd.layer.cornerRadius = 10
        waterPurifierAd.clipsToBounds = true
        
        if let layout = servicesCollectionView.collectionViewLayout as? UICollectionViewFlowLayout {
            layout.scrollDirection = .vertical
            layout.minimumLineSpacing = 12
            layout.minimumInteritemSpacing = 12
            layout.sectionInset = UIEdgeInsets(top: 0, left: 12, bottom: 0, right: 12)
        }
        
        curationsCollectionView.register(UINib(nibName: "VideoAdCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "videoAdCell")
        
        if let layout2 = curationsCollectionView.collectionViewLayout as? UICollectionViewFlowLayout {
            layout2.scrollDirection = .horizontal
            layout2.minimumLineSpacing = 16
            layout2.sectionInset = UIEdgeInsets(top: 0, left: 20, bottom: 0, right: 20)
        }
        
        noteworthyCollectionView.register(UINib(nibName: "NoteworthyCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "noteworthyCell")
        
        if let layout3 = noteworthyCollectionView.collectionViewLayout as? UICollectionViewFlowLayout {
            layout3.scrollDirection = .horizontal
            layout3.minimumLineSpacing = 16
            layout3.minimumInteritemSpacing = 0
            layout3.sectionInset = UIEdgeInsets(top: 0, left: 20, bottom: 0, right: 20)
        }
        
        mostBookedServicesCollectionView.register(UINib(nibName: "ServiceCardCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "ServiceCardCell")
        
        if let layout4 = mostBookedServicesCollectionView.collectionViewLayout as? UICollectionViewFlowLayout {
            layout4.scrollDirection = .horizontal
            layout4.minimumLineSpacing = 16
            layout4.sectionInset = UIEdgeInsets(top: 0, left: 20, bottom: 0, right: 20)
        }
        
        professionalsCollectionView.register(UINib(nibName: "VideoAdCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "videoAdCell")
        
        if let layout5 = professionalsCollectionView.collectionViewLayout as? UICollectionViewFlowLayout {
            layout5.scrollDirection = .horizontal
            layout5.minimumLineSpacing = 16
            layout5.sectionInset = UIEdgeInsets(top: 0, left: 20, bottom: 0, right: 20)
        }
        
        womenSalonCollectionView.register(UINib(nibName: "PosterCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "posterImageCell")
        
        if let layout6 = womenSalonCollectionView.collectionViewLayout as? UICollectionViewFlowLayout {
            layout6.scrollDirection = .horizontal
            layout6.minimumLineSpacing = 16
            layout6.sectionInset = UIEdgeInsets(top: 0, left: 20, bottom: 0, right: 20)
        }
        
        womenSpaCollectionView.register(UINib(nibName: "PosterCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "posterImageCell")
        
        if let layout7 = womenSpaCollectionView.collectionViewLayout as? UICollectionViewFlowLayout {
            layout7.scrollDirection = .horizontal
            layout7.minimumLineSpacing = 16
            layout7.sectionInset = UIEdgeInsets(top: 0, left: 20, bottom: 0, right: 20)
        }
        
        cleaningAndPestCollectionView.register(UINib(nibName: "PosterCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "posterImageCell")
        
        if let layout8 = cleaningAndPestCollectionView.collectionViewLayout as? UICollectionViewFlowLayout {
            layout8.scrollDirection = .horizontal
            layout8.minimumLineSpacing = 16
            layout8.sectionInset = UIEdgeInsets(top: 0, left: 20, bottom: 0, right: 20)
        }
        
        appliancesAndServiceCollectionView.register(UINib(nibName: "PosterCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "posterImageCell")
        
        if let layout9 = appliancesAndServiceCollectionView.collectionViewLayout as? UICollectionViewFlowLayout {
            layout9.scrollDirection = .horizontal
            layout9.minimumLineSpacing = 16
            layout9.sectionInset = UIEdgeInsets(top: 0, left: 20, bottom: 0, right: 20)
        }
        
        homeRepairAndInstallationcollectonview.register(UINib(nibName: "ServiceCardCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "ServiceCardCell")
        
        if let layout10 = homeRepairAndInstallationcollectonview.collectionViewLayout as? UICollectionViewFlowLayout {
            layout10.scrollDirection = .horizontal
            layout10.minimumLineSpacing = 16
            layout10.sectionInset = UIEdgeInsets(top: 0, left: 20, bottom: 0, right: 20)
        }
        
        menMassageCollectionView.register(UINib(nibName: "PosterCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "posterImageCell")
        
        if let layout11 = menMassageCollectionView.collectionViewLayout as? UICollectionViewFlowLayout {
            layout11.scrollDirection = .horizontal
            layout11.minimumLineSpacing = 16
            layout11.sectionInset = UIEdgeInsets(top: 0, left: 20, bottom: 0, right: 20)
        }
        
        menSalonCollectionView.register(UINib(nibName: "PosterCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "posterImageCell")
        
        if let layout12 = menSalonCollectionView.collectionViewLayout as? UICollectionViewFlowLayout {
            layout12.scrollDirection = .horizontal
            layout12.minimumLineSpacing = 16
            layout12.sectionInset = UIEdgeInsets(top: 0, left: 20, bottom: 0, right: 20)
        }
        
    }
}

extension AllServicesViewController: UICollectionViewDelegateFlowLayout, UICollectionViewDataSource {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        if collectionView == servicesCollectionView {
            return allServices.count
            
        } else if collectionView == curationsCollectionView {
            return curationsAd.count
            
        } else if collectionView == noteworthyCollectionView {
            return noteworthyItems.count
            
        } else if collectionView == mostBookedServicesCollectionView {
            return mostBookedServices.count
            
        } else if collectionView == professionalsCollectionView {
            return professionalsAd.count
            
        } else if collectionView == womenSalonCollectionView {
            return womenSalon.count
            
        } else if collectionView == womenSpaCollectionView {
            return womenSpa.count
            
        } else if collectionView == cleaningAndPestCollectionView {
            return cleaningAndPestControl.count
            
        } else if collectionView == appliancesAndServiceCollectionView {
            return cleaningAndPestControl.count
            
        } else if collectionView == homeRepairAndInstallationcollectonview {
            return homeRepairAndInstallation.count
            
        } else if collectionView == menMassageCollectionView {
            return menMassage.count
            
        } else if collectionView == menSalonCollectionView {
            return menSalon.count
            
        }
        
        return 0
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if collectionView == servicesCollectionView {
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "serviceCell", for: indexPath) as! ServiceCategoryCollectionViewCell
            let item = allServices[indexPath.row]
            cell.imageView.image = UIImage(named: item.image)
            cell.titleLabel.text = item.title
            return cell
            
        } else if collectionView == curationsCollectionView {
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "videoAdCell", for: indexPath) as! VideoAdCollectionViewCell
            let imageName = curationsAd[indexPath.row]
            cell.imageView.image = UIImage(named: imageName)
            return cell
            
        } else if collectionView == noteworthyCollectionView {
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "noteworthyCell", for: indexPath) as! NoteworthyCollectionViewCell
            let item = noteworthyItems[indexPath.row]
            cell.imageView.image = UIImage(named: item.image)
            cell.titleLabel.text = item.title
            return cell
            
        } else if collectionView == mostBookedServicesCollectionView {
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "ServiceCardCell", for: indexPath) as! ServiceCardCollectionViewCell
            let item = mostBookedServices[indexPath.row]
            cell.imageView.image = UIImage(named: item.image)
            cell.titleLabel.text = item.title
            cell.ratingLabel.text = item.rating
            cell.amountLabel.text = item.amount
            return cell
            
        } else if collectionView == professionalsCollectionView {
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "videoAdCell", for: indexPath) as! VideoAdCollectionViewCell
            let imageName = professionalsAd[indexPath.row]
            cell.imageView.image = UIImage(named: imageName)
            return cell
            
        } else if collectionView == womenSalonCollectionView {
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "posterImageCell", for: indexPath) as! PosterCollectionViewCell
            let imageName = womenSalon[indexPath.row]
            cell.imageView.image = UIImage(named: imageName)
            return cell
            
        } else if collectionView == womenSpaCollectionView {
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "posterImageCell", for: indexPath) as! PosterCollectionViewCell
            let imageName = womenSpa[indexPath.row]
            cell.imageView.image = UIImage(named: imageName)
            return cell
            
        } else if collectionView == cleaningAndPestCollectionView {
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "posterImageCell", for: indexPath) as! PosterCollectionViewCell
            let imageName = cleaningAndPestControl[indexPath.row]
            cell.imageView.image = UIImage(named: imageName)
            return cell
            
        } else if collectionView == appliancesAndServiceCollectionView {
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "posterImageCell", for: indexPath) as! PosterCollectionViewCell
            let imageName = appliancesAndServices[indexPath.row]
            cell.imageView.image = UIImage(named: imageName)
            return cell
            
        }  else if collectionView == homeRepairAndInstallationcollectonview {
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "ServiceCardCell", for: indexPath) as! ServiceCardCollectionViewCell
            let item = homeRepairAndInstallation[indexPath.row]
            cell.imageView.image = UIImage(named: item.image)
            cell.titleLabel.text = item.title
            cell.ratingLabel.text = item.rating
            cell.amountLabel.text = item.amount
            return cell
            
        } else if collectionView == menMassageCollectionView {
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "posterImageCell", for: indexPath) as! PosterCollectionViewCell
            let imageName = menMassage[indexPath.row]
            cell.imageView.image = UIImage(named: imageName)
            return cell
            
        } else {
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "posterImageCell", for: indexPath) as! PosterCollectionViewCell
            let imageName = menSalon[indexPath.row]
            cell.imageView.image = UIImage(named: imageName)
            return cell
            
        }
        
    }
    
    func collectionView(_ collectionView: UICollectionView,
                        layout collectionViewLayout: UICollectionViewLayout,
                        sizeForItemAt indexPath: IndexPath) -> CGSize {
        if collectionView == servicesCollectionView {
            let itemsPerRow: CGFloat = 3
            let spacing: CGFloat = 12
            
            // Account for section insets or safe area insets
            let sectionInsets = (collectionView.collectionViewLayout as? UICollectionViewFlowLayout)?.sectionInset ?? .zero
            let safeAreaInsets = collectionView.safeAreaInsets
            
            let totalHorizontalInsets = sectionInsets.left + sectionInsets.right + safeAreaInsets.left + safeAreaInsets.right
            let totalSpacing = (itemsPerRow - 1) * spacing + totalHorizontalInsets
            let width = (collectionView.bounds.width - totalSpacing) / itemsPerRow
            return CGSize(width: floor(width), height: 140)
            
        } else if collectionView == curationsCollectionView {
            return CGSize(width: 160, height: 250)
            
        } else if collectionView == noteworthyCollectionView {
            return CGSize(width: 120, height: 170)
            
        } else if collectionView == mostBookedServicesCollectionView {
            return CGSize(width: 160, height: 260)
            
        } else if collectionView == professionalsCollectionView {
            return CGSize(width: 160, height: 250)
            
        } else if collectionView == womenSalonCollectionView {
            return CGSize(width: 160, height: 200)
            
        } else if collectionView == womenSpaCollectionView {
            return CGSize(width: 160, height: 200)
            
        } else if collectionView == cleaningAndPestCollectionView {
            return CGSize(width: 160, height: 200)
            
        } else if collectionView == appliancesAndServiceCollectionView {
            return CGSize(width: 160, height: 200)
            
        } else if collectionView == homeRepairAndInstallationcollectonview {
            return CGSize(width: 160, height: 260)
            
        } else if collectionView == menMassageCollectionView {
            return CGSize(width: 160, height: 200)
            
        } else if collectionView == menSalonCollectionView {
            return CGSize(width: 160, height: 200)
            
        }
        
        return CGSize.zero
    }
    
}
