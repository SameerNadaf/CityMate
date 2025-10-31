//
//  LoginView.swift
//  Ullan
//
//  Created by Cachatto Admin on 29/10/25.
//

import Foundation
import UIKit

class WelcomeViewController : UIViewController {
    
    @IBOutlet weak var Titletext: UILabel!
    @IBOutlet weak var Subtitletext: UILabel!
    @IBOutlet weak var LoginBtn : UIButton!
    @IBOutlet weak var RegisterBtn : UIButton!
    
    // Using colors from the 'defaultLight' and 'defaultDark' theme
    let primaryBlue = UIColor(named: "#3C467B") ?? .blue
    let secondaryGray = UIColor(named: "#636CCB") ?? .gray
    
    override func viewDidLoad() {
        super.viewDidLoad()
        Titletext.text = "Services at Your Doorstep"
        Titletext.font = .boldSystemFont(ofSize: 26)
        Titletext.textColor = .blue
        Subtitletext.text = "Book trusted professionals for cleaning, repairs, beauty, and more — anytime, anywhere."
        Subtitletext.font = .systemFont(ofSize: 16)
        Subtitletext.textColor = .gray
        Subtitletext.numberOfLines = 3
        LoginBtn.setTitle("Login", for: .normal)
        LoginBtn.titleLabel?.font = UIFont.boldSystemFont(ofSize: 20)
        LoginBtn.tintColor = .white
        LoginBtn.backgroundColor = .blue
        LoginBtn.layer.cornerRadius = 10
        RegisterBtn.setTitle("Register", for: .normal)
        RegisterBtn.tintColor = .white
        RegisterBtn.backgroundColor = .blue
        RegisterBtn.layer.cornerRadius = 10
        
    }
    @IBAction func LoginBtn(_ sender: Any) {
      
       let viewcont = storyboard?.instantiateViewController(withIdentifier: "LoginViewController") as! LoginViewController
        self.navigationController?.pushViewController(viewcont, animated: true)
    }
    
}
