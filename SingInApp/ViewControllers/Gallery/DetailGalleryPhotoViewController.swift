//
//  DetailGalleryPhotoViewController.swift
//  SingInApp
//
//  Created by Nikita on 18.07.21.
//

import UIKit

class DetailGalleryPhotoViewController: UIViewController {

    // MARK: IBOutlets
    @IBOutlet weak var detailGalleryPhoto: UIImageView!
    
    // MARK: properties
    var image: UIImage?
    
    // MARK: override methods
    override func viewDidLoad() {
        super.viewDidLoad()
        
        detailGalleryPhoto.image = image
    }
}
