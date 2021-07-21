//
//  ProfileViewController.swift
//  SingInApp
//
//  Created by Nikita on 12.07.21.
//

import UIKit

class ProfileViewController: UIViewController {
    
    // MARK: IBOutlets
    @IBOutlet weak var userNameLabel: UILabel!
    @IBOutlet weak var logOutButton: UIButton!
    
    // MARK: public properties
    var user: User!
    
    // MARK: override methods
    override func viewDidLoad() {
        super.viewDidLoad()
        logOutButton.layer.cornerRadius = 10
        userNameLabel.text = "Welcome, \(user.persone.fullName)!"
        tabBarItem.title = user.persone.fullName
    }
}
