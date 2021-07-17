//
//  MoreInfoViewController.swift
//  SingInApp
//
//  Created by Nikita on 16.07.21.
//

import UIKit

class MoreInfoViewController: UIViewController {
    
    // MARK: IBOutlets
    @IBOutlet weak var galleryButton: UIButton!
    @IBOutlet weak var testLabel: UILabel!
    
    // MARK: properties
    var navigationBarTitle: String!
    
    // MARK: override methods
    override func viewDidLoad() {
        super.viewDidLoad()
        galleryButton.layer.cornerRadius = 10
        testLabel.text = navigationBarTitle
    }
    @IBAction func galleryButtonPressed() {
        performSegue(withIdentifier: "galleryVC", sender: nil)
    }
}
