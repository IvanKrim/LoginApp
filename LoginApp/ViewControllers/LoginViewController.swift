//
//  ViewController.swift
//  LoginApp
//
//  Created by Kalabishka Ivan on 13.05.2021.
//

// MARK: - IB Outlets
// MARK: - Public Properties

// MARK: - Initializers

// MARK: - IB Action
// MARK: - Public Methods
// MARK: - Private Methods

import UIKit

class LoginViewController: UIViewController {
    
    // MARK: - IB Outlets
    @IBOutlet var userTF: UITextField!
    @IBOutlet var passwordTF: UITextField!
    
    // MARK: - Private Properties
    private let user = User.getUserData()
    
    // MARK: - Override Methods
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let tabBarController = segue.destination as? UITabBarController else { return }
        guard let viewControllers = tabBarController.viewControllers else { return }
        
        viewControllers.forEach {
            if let welcomeVC = $0 as? WelcomeViewController {
                welcomeVC.user = user
            } else if let navigationVC = $0 as? UINavigationController {
                let userInfoVC = navigationVC.topViewController as! UserInfoViewController
                userInfoVC.user = user
            }
            
            //        for viewController in viewControllers {
            //            if let welcomeVC = viewController as? WelcomeViewController {
            //                welcomeVC.user = user
            //            } else if let navigationVC = viewController as? UINavigationController {
            //                let userInfoVC = navigationVC.topViewController as! UserInfoViewController
            //                userInfoVC.user = user
            //            }
        }
    }
    
    // MARK: - IB Action
    @IBAction func logInPressed() {
        if userTF.text != user.login || passwordTF.text != user.password {
            showAlert(
                title: "Incorrect username or password",
                message: "Please try again",
                textField: passwordTF
            )
            return
            
        }
        performSegue(withIdentifier: "showWelcomeVC", sender: nil)
    }
    
    @IBAction func forgotButtonPressed(_ sender: UIButton) {
        sender.tag == 0
            ? showAlert(title: "Forgot User Name?", message: "Your User name is: \(user.login)")
            : showAlert(title: "Forgot password?", message: "Your password is: \(user.password)")
    }
    
    @IBAction func unwindSegue(segue: UIStoryboardSegue) {
        userTF.text = ""
        passwordTF.text = ""
    }
}

extension LoginViewController {
    private func showAlert(title: String, message: String, textField: UITextField? = nil) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default) { _ in
            textField?.text = ""
        }
        alert.addAction(okAction)
        present(alert, animated: true)
    }
}

extension LoginViewController: UITextFieldDelegate {
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        self.view.endEditing(true)
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        if textField == userTF {
            passwordTF.becomeFirstResponder()
        } else {
            logInPressed()
        }
        return true
    }
}


