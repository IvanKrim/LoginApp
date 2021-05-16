//
//  UserInfoViewController.swift
//  LoginApp
//
//  Created by Kalabishka Ivan on 16.05.2021.
//

import UIKit

class UserInfoViewController: UIViewController {

    var userName: String!
    
    @IBOutlet var userNameLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        userNameLabel.text = userName
    }
}
