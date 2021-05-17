//
//  UserInfoViewController.swift
//  LoginApp
//
//  Created by Kalabishka Ivan on 16.05.2021.
//

import UIKit

class UserInfoViewController: UIViewController {
    
    @IBOutlet var userNameLabel: UILabel!
    @IBOutlet var userSurnameLabel: UILabel!
    @IBOutlet var userAgeLabel: UILabel!
    @IBOutlet var userAvatarImage: UIImageView! {
        didSet {
            userAvatarImage.layer.cornerRadius = userAvatarImage.frame.height * 0.1
        }
    }
    
    var user: User!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        userNameLabel.text = user.person.name
        userSurnameLabel.text = user.person.surname
        userAgeLabel.text = user.person.age
        userAvatarImage.image = UIImage(named: user.person.avatarImage)
    }
}
