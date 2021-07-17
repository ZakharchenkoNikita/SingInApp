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
    
    // MARK: properties
    var titleName: String!
    
    var userFamilyStatus: String!
    var userAge: Int!
    var userCurrentCity: String!
    
    // MARK: private properties
    private let user = User.getInfo()
    
    // MARK: override methods
    override func viewDidLoad() {
        super.viewDidLoad()
        
        moreInfoButton.layer.cornerRadius = 10
        navigationItem.title = titleName
        
        familyStatusLabel.text = userFamilyStatus
        ageLabel.text = String(userAge)
        currentCityLabel.text = userCurrentCity
    }
    
    @IBAction func moreInfoButtonPressed() {
        performSegue(withIdentifier: "moreInfoVC", sender: nil)
    }
}
