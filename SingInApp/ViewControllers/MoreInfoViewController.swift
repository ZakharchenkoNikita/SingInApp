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
    
    @IBOutlet weak var positionLabel: UILabel!
    @IBOutlet weak var relativesLabel: UILabel!
    @IBOutlet weak var favoriteBookLabel: UILabel!
    @IBOutlet weak var favoriteMusicianLabel: UILabel!
    @IBOutlet weak var favoriteFilmLabel: UILabel!
    @IBOutlet weak var aboutMeLabel: UILabel!
    
    // MARK: properties
    var navigationBarTitle: String!
    
    // MARK: override methods
    override func viewDidLoad() {
        super.viewDidLoad()
        galleryButton.layer.cornerRadius = 10
        
    }
    @IBAction func galleryButtonPressed() {
        performSegue(withIdentifier: "galleryVC", sender: nil)
    }
}
