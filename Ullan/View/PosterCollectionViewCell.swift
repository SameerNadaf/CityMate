//
//  PosterCollectionViewCell.swift
//  Ullan
//
//  Created by Asha on 05/11/25.
//

import UIKit

class PosterCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var imageView: UIImageView!

    override func awakeFromNib() {
        super.awakeFromNib()
        imageView.layer.cornerRadius = 10
        imageView.clipsToBounds = true
    }

}
