//
//  HomeView.swift
//  Ullan
//
//  Created by Asha on 07/11/25.
//

import UIKit

class HomeViewController: UIViewController {
    
    @IBOutlet weak var shortLocation: UILabel!
    @IBOutlet weak var detailedLocation: UILabel!
    @IBOutlet weak var cartHeaderImageView: UIView!
    @IBOutlet weak var searchBarView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Header
        cartHeaderImageView.layer.cornerRadius = cartHeaderImageView.frame.size.width / 2
        cartHeaderImageView.clipsToBounds = true
        cartHeaderImageView.layer.borderWidth = 2
        cartHeaderImageView.layer.borderColor = UIColor.lightGray.cgColor
        
        // search bar
        searchBarView.layer.cornerRadius = 10
        searchBarView.layer.borderWidth = 1
        searchBarView.layer.borderColor = UIColor.lightGray.cgColor
        searchBarView.clipsToBounds = true
    }
}
