//
//  ProfileView.swift
//  Ullan
//
//  Created by Asha on 01/11/25.
//

import UIKit

struct ProfileOptions {
    let title: String
    let iconName: String
}

class ProfileView: UIViewController {

    @IBOutlet weak var userName: UILabel!
    @IBOutlet weak var contactNum: UILabel!
    @IBOutlet weak var userEmail: UILabel!
    @IBOutlet weak var profileImage: UIImageView!
    @IBOutlet weak var bookingsView: UIView!
    @IBOutlet weak var devicesView: UIView!
    @IBOutlet weak var supportView: UIView!
    @IBOutlet weak var profileOptionsCard: UIView!
    @IBOutlet weak var myPlans: UIView!
    @IBOutlet weak var wallet: UIView!
    @IBOutlet weak var plusMember: UIView!
    @IBOutlet weak var myRatings: UIView!
    @IBOutlet weak var manageAddresses: UIView!
    @IBOutlet weak var managePayments: UIView!
    @IBOutlet weak var settings: UIView!
    @IBOutlet weak var about: UIView!
    @IBOutlet weak var signOutButton: UIButton!
    @IBOutlet weak var versionInfo: UILabel!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        super.viewDidLoad()
        self.edgesForExtendedLayout = [.bottom]
        
        profileImage.layer.cornerRadius = profileImage.frame.size.width / 2
        profileImage.clipsToBounds = true
        
        bookingsView.layer.cornerRadius = 10
        bookingsView.layer.borderWidth = 1
        bookingsView.layer.borderColor = UIColor.lightGray.cgColor
        bookingsView.clipsToBounds = true
        
        devicesView.layer.cornerRadius = 10
        devicesView.layer.borderWidth = 1
        devicesView.layer.borderColor = UIColor.lightGray.cgColor
        devicesView.clipsToBounds = true
        
        supportView.layer.cornerRadius = 10
        supportView.layer.borderWidth = 1
        supportView.layer.borderColor = UIColor.lightGray.cgColor
        supportView.clipsToBounds = true
    }
    
}
