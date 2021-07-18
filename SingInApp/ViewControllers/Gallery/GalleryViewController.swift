//
//  GalleryViewController.swift
//  SingInApp
//
//  Created by Nikita on 16.07.21.
//

import UIKit

class GalleryViewController: UIViewController {

    // MARK: IBOutlet
    @IBOutlet weak var collectionView: UICollectionView!
    
    // MARK: properties
    
    let photoGallery = PhotoGallery()
    
    // MARK: override methods
    override func viewDidLoad() {
        super.viewDidLoad()
        
        collectionView.delegate = self
        collectionView.dataSource = self
    }
}

// MARK:
extension GalleryViewController: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        photoGallery.images.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cellGalleryImage", for: indexPath) as! GalleryPhotoCollectionViewCell
    
        cell.galleryPhotoImage.image = photoGallery.images[indexPath.item]
        return cell
    }
    
}
