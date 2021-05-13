//
//  ViewController.swift
//  LoginApp
//
//  Created by Kalabishka Ivan on 13.05.2021.
//

// MARK: - IB Outlets
// MARK: - Public Properties
// MARK: - Private Properties
// MARK: - Initializers
// MARK: - Override Methods
// MARK: - IB Action
// MARK: - Public Methods
// MARK: - Private Methods

import UIKit

class LoginViewController: UIViewController {

    @IBOutlet var userTF: UITextField!
    @IBOutlet var passwordTF: UITextField!
    
    private let user = "User"
    private let password = "123321"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    
    @IBAction func logInPressed() {
        
    }
    
    @IBAction func forgotButtonsPressed(_ sender: UIButton) {
        sender.tag == 0
            ? showAlert(title: "Forgot your username?", message: "Your login is \(user)" )
            : showAlert(title: "Forgot your password?", message: "Your password is \(password)")
    }
    
}

extension LoginViewController {
    private func showAlert(title: String, message: String) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default) { _ in
            
        }
        alert.addAction(okAction)
        present(alert, animated: true)
    }
}
