//
//  WelcomeViewController.swift
//  LoginApp
//
//  Created by Kalabishka Ivan on 13.05.2021.
//

import UIKit

class WelcomeViewController: UIViewController {

    @IBOutlet var userNameLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    
    @IBAction func logOutPressed() {
        dismiss(animated: true)
    }
    
}
