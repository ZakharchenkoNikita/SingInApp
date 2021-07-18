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
    var userPosition: String!
    var userRelatives: String!
    var userFavoriteBook: String!
    var userFavoriteMusician: String!
    var userFavoriteFilm: String!
    var userAboutMe: String!
    
    var user: User!
    
    // MARK: override methods
    override func viewDidLoad() {
        super.viewDidLoad()
        galleryButton.layer.cornerRadius = 10
        getUserMoreInfo()
    }
    
    // MARK: IBAction
    @IBAction func galleryButtonPressed() {
        performSegue(withIdentifier: "galleryVC", sender: nil)
    }
    
    // MARK: private methods
    private func getUserMoreInfo() {
        positionLabel.text = userPosition
        relativesLabel.text = userRelatives
        favoriteBookLabel.text = userFavoriteBook
        favoriteMusicianLabel.text = userFavoriteMusician
        favoriteFilmLabel.text = userFavoriteFilm
        aboutMeLabel.text = userAboutMe
    }
}

// MARK: Navigation
extension MoreInfoViewController {
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let galleryVC = segue.destination as? GalleryViewController else { return }
        
        galleryVC.user = user
    }
}
