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
        prepareProfileImage()
    }

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

// MARK: Navigation
extension InfoViewController {
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let moreInfoVC = segue.destination as? MoreInfoViewController else { return }
        
        moreInfoVC.userPosition = user.persone.moreInformation.workPlace
        moreInfoVC.userRelatives = user.persone.moreInformation.relatives.rawValue
        moreInfoVC.userFavoriteBook = user.persone.moreInformation.favoriteBook
        moreInfoVC.userFavoriteMusician = user.persone.moreInformation.favoriteMusician
        moreInfoVC.userFavoriteFilm = user.persone.moreInformation.favoriteFilm
        moreInfoVC.userAboutMe = user.persone.moreInformation.aboutMe
        
        moreInfoVC.user = user
    }
}

// MARK: work with ProfileImage
extension InfoViewController {
    
    private func prepareProfileImage() {
        profileImage.image = UIImage(named: userProfileImage)
        profileImage.layer.cornerRadius = 10
        profileImage.layer.borderColor = #colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)
        profileImage.layer.borderWidth = 1
    }
}
