//
//  ImageCarouselCell.swift
//  Ullan
//
//  Created by Asha on 05/11/25.
//

import UIKit

class ImageCarouselCell: UICollectionViewCell {
    @IBOutlet weak var imageView: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        imageView.layer.cornerRadius = 10
        imageView.clipsToBounds = true
        if UIDevice.current.userInterfaceIdiom == .phone {
            imageView.widthAnchor.constraint(equalToConstant: UIScreen.main.bounds.width - 40).isActive = true
        } else {
            imageView.widthAnchor.constraint(equalToConstant: 400).isActive = true
        }
        
    }
}
