//
//  LoginViewController.swift
//  Ullan
//
//  Created by Cachatto Admin on 30/10/25.
//

import UIKit

class LoginViewController: UIViewController {
    
    @IBOutlet weak var loginTitle: UILabel!
    @IBOutlet weak var loginSubTitle: UILabel!
    @IBOutlet weak var emailField: UITextField!
    @IBOutlet weak var passField: UITextField!
    @IBOutlet weak var forgotPass: UILabel!
    @IBOutlet weak var loginBtn: UIButton!
    @IBOutlet weak var signUpBtn: UIButton!
    @IBOutlet weak var versionlabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        loginTitle.text = "Login here"
        loginTitle.font = UIFont.systemFont(ofSize: 26, weight: .black)
        loginSubTitle.text = "Login to continue exploring repairs and home services."
        loginSubTitle.textColor = .gray
        loginSubTitle.numberOfLines = 3
        loginSubTitle.font = UIFont.systemFont(ofSize: 14)
        loginSubTitle.textColor = .gray
        emailField.placeholder = "Example.com"
        emailField.layer.cornerRadius = 10
        passField.placeholder = "Password"
        passField.layer.cornerRadius = 10
        forgotPass.text = "Forgot Password?"
        forgotPass.font = UIFont.systemFont(ofSize: 14)
        loginBtn.setTitle("Login", for: .normal)
        loginBtn.backgroundColor = .blue
        loginBtn.layer.cornerRadius = 10
        loginBtn.tintColor = .white
        signUpBtn.setTitle("Sign Up", for: .normal)
        signUpBtn.backgroundColor = .blue
        signUpBtn.layer.cornerRadius = 10
        signUpBtn.tintColor = .white
        versionlabel.text = "Ullan version 0.0.1"
        versionlabel.textColor = .lightGray
    }

   
    @IBAction func signUpBtn(_ sender: Any) {
        let registerPage = storyboard?.instantiateViewController(withIdentifier: "RegisterView") as! RegisterView
        self.navigationController?.pushViewController(registerPage, animated: true)
    }
}
