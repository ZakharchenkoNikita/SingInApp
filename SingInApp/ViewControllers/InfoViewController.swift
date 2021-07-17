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
    
    // MARK: properties
    var navigationBarTitle: String!
    
    var userFamilyStatus: String!
    var userAge: Int!
    var userCurrentCity: String!
    var userGender: Character!
    
    // MARK: override methods
    override func viewDidLoad() {
        super.viewDidLoad()
        
        moreInfoButton.layer.cornerRadius = 10
        navigationItem.title = navigationBarTitle
        
        familyStatusLabel.text = userFamilyStatus
        ageLabel.text = String(userAge)
        currentCityLabel.text = userCurrentCity
        genderLabel.text = String(userGender)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let moreInfoVC = segue.destination as? MoreInfoViewController else { return }
        
        moreInfoVC.navigationBarTitle = navigationBarTitle
    }
    
    @IBAction func moreInfoButtonPressed() {
        performSegue(withIdentifier: "moreInfoVC", sender: nil)
    }
}
