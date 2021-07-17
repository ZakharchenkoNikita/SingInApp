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
    
    @IBOutlet weak var familyStatusLabel: UILabel!
    @IBOutlet weak var ageLabel: UILabel!
    @IBOutlet weak var currentCityLabel: UILabel!
    @IBOutlet weak var genderLabel: UILabel!
    @IBOutlet weak var petLabel: UILabel!
    
    @IBOutlet weak var profileImage: UIImageView!
    
    // MARK: properties
    var navigationBarTitle: String!
    
    var userFamilyStatus: String!
    var userAge: Int!
    var userCurrentCity: String!
    var userGender: String!
    var userPet: String!
    var userProfileImage: String!
    
    var user: User!
    
    // MARK: override methods
    override func viewDidLoad() {
        super.viewDidLoad()
        
        moreInfoButton.layer.cornerRadius = 10
        navigationItem.title = navigationBarTitle
        
        getUserInfo()
    }
    
    override func viewWillLayoutSubviews() {
        profileImage.layer.cornerRadius = profileImage.frame.size.height / 2
        profileImage.clipsToBounds = true
    }
    
//    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//        guard let moreInfoVC = segue.destination as? MoreInfoViewController else { return }
//    }

    // MARK: IBAction
    @IBAction func moreInfoButtonPressed() {
        performSegue(withIdentifier: "moreInfoVC", sender: nil)
    }
    
    // MARK: private methods
    private func getUserInfo() {
        familyStatusLabel.text = userFamilyStatus
        ageLabel.text = String(userAge)
        currentCityLabel.text = userCurrentCity
        genderLabel.text = userGender
        petLabel.text = userPet
        profileImage.image = UIImage(named: userProfileImage)
    }
}
