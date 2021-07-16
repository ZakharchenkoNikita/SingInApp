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
    
    var userName: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        logOutButton.layer.cornerRadius = 10
        userNameLabel.text = "Welcome, \(userName ?? "")!"
    }
}
