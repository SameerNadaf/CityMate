//
//  InstantServicesCollectionViewCell.swift
//  Ullan
//
//  Created by Asha on 09/11/25.
//

import UIKit

class InstantServicesCollectionViewCell: UICollectionViewCell {

    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var subtitleLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        imageView.layer.cornerRadius = 10
        imageView.clipsToBounds = true
    }

}
