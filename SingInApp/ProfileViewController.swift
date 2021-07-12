//
//  ProfileViewController.swift
//  SingInApp
//
//  Created by Nikita on 12.07.21.
//

import UIKit

class ProfileViewController: UIViewController {

    @IBOutlet weak var userNameLabel: UILabel!
    
    var userName: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        userNameLabel.text = userName
    }
}
