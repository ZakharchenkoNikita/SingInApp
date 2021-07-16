//
//  InfoViewController.swift
//  SingInApp
//
//  Created by Nikita on 16.07.21.
//

import UIKit

class InfoViewController: UIViewController {
    
    // MARK: IBOutlets
    @IBOutlet weak var moreInfoButton: UIButton!
    @IBOutlet weak var profileImage: UIImageView!
    
    var titleName: String!
    var userProfileImage: UIImage!
    
    // MARK: private properties
    private let users = User.getInfo()
    
    // MARK: override methods
    override func viewDidLoad() {
        super.viewDidLoad()
        
        moreInfoButton.layer.cornerRadius = 10
        navigationItem.title = titleName
        
        profileImage.image = userProfileImage
    }
    
    @IBAction func moreInfoButtonPressed() {
        performSegue(withIdentifier: "moreInfoVC", sender: nil)
    }
}
