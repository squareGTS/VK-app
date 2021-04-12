//
//  PhotoController.swift
//  VK app
//
//  Created by Maxim Bekmetov on 11.04.2021.
//

import UIKit

class PhotoController: UICollectionViewController {

    var friendsController = FriendsController()
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    // MARK: UICollectionViewDataSource
    override func numberOfSections(in collectionView: UICollectionView) -> Int {

        return 1
    }

    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
      
        return friendsController.friends.count
    }
    
//    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
//        
//        
//        
//            return CGSize(width: (self.collectionView.frame.size.width / 4), height: self.collectionView.frame.size.height / 10)
//      
//    }

    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
       let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "photoCell", for: indexPath) as? PhotosCell
    
        cell?.photo.image = friendsController.friends[indexPath.row].avatar
    
        return cell ?? UICollectionViewCell()
    }
}
