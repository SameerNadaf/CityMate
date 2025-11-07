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
    
    @IBAction func registerButtonPressed(_ sender: UIButton) {
        guard let email = emailField.text,
              let password = passField.text,
              let confirmPass = conPassField.text else { return }
        
        let verify = validateUserFields(userName: "Sameer N", email: email, password: password, confirmPass: confirmPass)
        
        if verify {
            if let error = passwordValidationError(password) {
                print(error)
            } else {
                Task {
                    await register(userName: "Sameer N", email: email, password: password, phone: "9876543210")
                }
            }
        }
    }
    
}

/*
 Request body
 
 {
   "name": "John Doe",
   "email": "john@example.com",
   "password": "123456",
   "phone": "9876543210"
 }
 */

/*
 Response
 
 { "message": "Signup successful" }
 */

extension RegisterView {
    
    private func validateUserFields(userName: String, email: String, password: String, confirmPass: String) -> Bool {
        return !userName.isEmpty && !email.isEmpty && !password.isEmpty && !confirmPass.isEmpty && password == confirmPass
    }
    
    private func passwordValidationError(_ password: String) -> String? {
        if password.count < 8 {
            return "Password must be at least 8 characters long."
        }
        if password.range(of: "[A-Z]", options: .regularExpression) == nil {
            return "Add at least one uppercase letter."
        }
        if password.range(of: "[a-z]", options: .regularExpression) == nil {
            return "Add at least one lowercase letter."
        }
        if password.range(of: "[0-9]", options: .regularExpression) == nil {
            return "Add at least one number."
        }
        if password.range(of: "[!@#$%^&*(),.?\":{}|<>]", options: .regularExpression) == nil {
            return "Add at least one special character."
        }
        return nil
    }

    private func register(userName: String, email: String, password: String, phone: String?) async {
        guard let url = URL(string: "https://api.optionallabs.com/api/signup") else {
            print("Invalid URL")
            return
        }
        
        let body: [String : Any] = [
              "name": userName,
              "email": email,
              "password": password,
              "phone": phone ?? ""
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
            
            print("User Registration Successful!")
            await MainActor.run {
                goToLoginPage()
            }
            
        } catch {
            print("Error Registering User: \(error.localizedDescription)")
        }
    }
    
    private func goToLoginPage() {
        self.navigationController?.popViewController(animated: true)
    }
    
}
