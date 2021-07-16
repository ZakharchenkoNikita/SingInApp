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
    
    // MARK: override methods
    override func viewDidLoad() {
        super.viewDidLoad()
        galleryButton.layer.cornerRadius = 10
    }
    @IBAction func galleryButtonPressed() {
        performSegue(withIdentifier: "galleryVC", sender: nil)
    }
}
