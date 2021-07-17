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
    @IBOutlet weak var genderLabel: UILabel!
    @IBOutlet weak var logOutButton: UIButton!
    
    // MARK: public properties
    var userName: String!
    var userGender: String!
    
    // MARK: override methods
    override func viewDidLoad() {
        super.viewDidLoad()
        logOutButton.layer.cornerRadius = 10
        genderLabel.text = userGender
        userNameLabel.text = "Welcome, \(userName ?? "")!"
        tabBarItem.title = userName
    }
}
