//
//  PhotoGallery.swift
//  SingInApp
//
//  Created by Nikita on 18.07.21.
//

import Foundation
import UIKit

class PhotoGallery {
    var images: [UIImage] = []
    
    init() {
        setupGallery()
    }
    
    func setupGallery() {
        for image in 0...2 {
            guard let image = UIImage(named: "galleryImage\(image)") else { return }
            images.append(image)
        }
    }
}
