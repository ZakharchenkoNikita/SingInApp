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
    var user: User!
    
    // MARK: override methods
    override func viewDidLoad() {
        super.viewDidLoad()
        
        moreInfoButton.layer.cornerRadius = 10
        navigationItem.title = user.persone.fullName
        
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
        familyStatusLabel.text = user.persone.moreInformation.relatives.rawValue
        ageLabel.text = String(user.persone.shortInformation.age)
        currentCityLabel.text = user.persone.shortInformation.currentCity
        genderLabel.text = user.persone.shortInformation.gender.rawValue
        petLabel.text = user.persone.shortInformation.pet.rawValue
        profileImage.image = UIImage(named: user.persone.foto.mainProfileFoto)
    }
}

// MARK: Navigation
extension InfoViewController {
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let moreInfoVC = segue.destination as? MoreInfoViewController else { return }
        moreInfoVC.user = user
    }
}

// MARK: work with ProfileImage
extension InfoViewController {
    
    private func prepareProfileImage() {
        profileImage.image = UIImage(named: user.persone.foto.mainProfileFoto)
        profileImage.layer.cornerRadius = 10
        profileImage.layer.borderColor = #colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)
        profileImage.layer.borderWidth = 1
    }
}
