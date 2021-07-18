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
    
    var user: User!
//    let photoGallery = PhotoGallery()
    
    // MARK: override methods
    override func viewDidLoad() {
        super.viewDidLoad()
        
        collectionView.delegate = self
        collectionView.dataSource = self
    }
}

// MARK: work with gallery
extension GalleryViewController: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        user.persone.foto.photoGallery.images.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cellGalleryImage", for: indexPath) as! GalleryPhotoCollectionViewCell
    
        cell.galleryPhotoImage.image = UIImage(named: user.persone.foto.photoGallery.images[indexPath.item])
        return cell
    }
    
}
