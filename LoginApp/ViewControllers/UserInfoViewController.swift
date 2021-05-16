//
//  UserInfoViewController.swift
//  LoginApp
//
//  Created by Kalabishka Ivan on 16.05.2021.
//

import UIKit

class UserInfoViewController: UIViewController {

    let user = User.getUser()
    
    @IBOutlet var userNameLabel: UILabel!
    @IBOutlet var userSurnameLabel: UILabel!
    @IBOutlet var userAgeLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        userNameLabel.text = user.person.name
        userSurnameLabel.text = user.person.surname
        userAgeLabel.text = user.person.age
        
        
    }
}
