//
//  RegisterView.swift
//  Ullan
//
//  Created by Cachatto Admin on 30/10/25.
//

import UIKit

class RegisterView: UIViewController {

    @IBOutlet weak var registerTitleLabel: UILabel!
    @IBOutlet weak var backBtn: UIButton!
    
    @IBOutlet weak var subTitleLabel: UILabel!
    @IBOutlet weak var conPassField: UITextField!
    @IBOutlet weak var passField: UITextField!
    @IBOutlet weak var emailField: UITextField!
    @IBOutlet weak var registerBtn: UIButton!
    @IBOutlet weak var conPassFieldView: UIView!
    @IBOutlet weak var emailFieldView: UIView!
    @IBOutlet weak var passFieldView: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()
        registerTitleLabel.text = "Creat Account"
        registerTitleLabel.font = UIFont.systemFont(ofSize: 26, weight: .black)
        subTitleLabel.text = "Create an account and explore the best repair services around you!"
        subTitleLabel.numberOfLines = 3
        subTitleLabel.textColor = .gray
        subTitleLabel.font = UIFont.systemFont(ofSize: 14)
        emailFieldView.layer.cornerRadius = 10
        emailFieldView.layer.borderWidth = 1
        emailFieldView.layer.borderColor = UIColor.lightGray.cgColor
        emailField.placeholder = "Example.com"
        emailField.layer.cornerRadius = 10
        passFieldView.layer.cornerRadius = 10
        passFieldView.layer.borderWidth = 1
        passFieldView.layer.borderColor = UIColor.lightGray.cgColor
        passField.placeholder = "Password"
        passField.layer.cornerRadius = 10
        conPassFieldView.layer.cornerRadius = 10
        conPassFieldView.layer.borderWidth = 1
        conPassFieldView.layer.borderColor = UIColor.lightGray.cgColor
        conPassField.placeholder = "Confirm Password"
        conPassField.layer.cornerRadius = 10
        registerBtn.setTitle("Register", for: .normal)
        registerBtn.backgroundColor = .blue
        registerBtn.layer.cornerRadius = 10
        registerBtn.tintColor = .white
    }
    
    @IBAction func backBtn(_ sender: Any) {
        self.navigationController?.popViewController(animated: true)
    }
    @IBAction func registerBtn(_ sender: Any) {
    }
    
}
