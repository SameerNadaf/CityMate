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
    
    @IBAction func loginButtonPressed(_ sender: UIButton) {
        guard let email = emailField.text,
              let password = passField.text else
        {
            print("Email and password both required")
            return
        }
        
        if verifyUserNameAndPassword(email: email, password: password) {
            Task {
                await login(email: email, password: password)
            }
            
        } else {
            print("Email or password is missing")
        }
    }
}

/*
 Request body
 
 {
   "email": "john@example.com",
   "password": "123456"
 }
 */

/*
 Response
 
 {
   "message": "Login successful",
   "token": "",
   "user": {
     "id": 1,
     "name": "John Doe",
     "email": "john@example.com",
     "phone": "9876543210"
   }
 }
 */

extension LoginViewController {
    
    private func verifyUserNameAndPassword(email: String, password: String) -> Bool {
        return !email.isEmpty && !password.isEmpty
    }
    
    private func login(email: String, password: String) async {
        
        guard let url = URL(string: "https://api.optionallabs.com/api/login") else {
            print("Invalid URL")
            return
        }
        
        let body: [String : Any] = [
            "email": email,
            "password": password
        ]
        
        do {
            let jsonData = try JSONSerialization.data(withJSONObject: body)
            
            var request = URLRequest(url: url)
            request.httpMethod = "POST"
            request.setValue("application/json", forHTTPHeaderField: "Content-Type")
            request.httpBody = jsonData
            
            let ( _, response) = try await URLSession.shared.data(for: request)
            
            guard let httpResponse = response as? HTTPURLResponse,
                  httpResponse.statusCode >= 200 && httpResponse.statusCode < 300 else {
                print("Invalid response from server")
                print("Response: \(response)")
                return
            }
            
            print("Login Successful!")
            navigateToMainTabBar()
            
        } catch {
            print("Error logging in: \(error.localizedDescription)")
        }
        
    }
    
    private func navigateToMainTabBar() {
        let storyBoard = UIStoryboard(name: "Main", bundle: nil)
        
        guard let tabBarVC = storyBoard.instantiateViewController(withIdentifier: "mainTabBarController") as? UITabBarController else {
            print("Could not find mainTabBarController in storyboard")
            return
        }
        
        tabBarVC.modalPresentationStyle = .fullScreen
        
        if let windowScene = UIApplication.shared.connectedScenes.first as? UIWindowScene,
           let window = windowScene.windows.first {
            window.rootViewController = tabBarVC
            window.makeKeyAndVisible()
        }
    }
}
