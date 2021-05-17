//
//  WelcomeViewController.swift
//  LoginApp
//
//  Created by Kalabishka Ivan on 13.05.2021.
//

import UIKit

class WelcomeViewController: UIViewController {
    
    @IBOutlet var welcomeLabel: UILabel!
    
    var user: User!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        welcomeLabel.text = "Welcome, \(user.person.fullName)"
        
    }
    
    @IBAction func logOutPressed() {
        dismiss(animated: true)
    }
    
}
