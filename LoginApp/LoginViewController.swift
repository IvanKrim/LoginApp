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
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let welcomeVC = segue.destination as? WelcomeViewController else { return }
        welcomeVC.userName = user
    }
    
    @IBAction func logInPressed() {
        if userTF.text != user || passwordTF.text != password {
            showAlert(
                title: "Incorrect username or password",
                message: "Please try again"
            )
            return
        }
        performSegue(withIdentifier: "showWelcomeVC", sender: nil)
    }
    
    @IBAction func forgotButtonPressed(_ sender: UIButton) {
        sender.tag == 0
            ? showAlert(title: "Forgot User Name?", message: "Your User name is: \(user)")
            : showAlert(title: "Forgot password?", message: "Your password is: \(password)")
    }
    
    @IBAction func unwindSegue(segue: UIStoryboardSegue) {
        userTF.text = ""
        passwordTF.text = ""
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
