//
//  GalleryCollection.swift
//  VK app
//
//  Created by Maxim Bekmetov on 01.06.2021.
//

import UIKit

protocol PhotoToFriendDelegate: AnyObject {
    func showPresenter(photos: [Photo], selectedPhoto: Int)
}

class GalleryCollection: UICollectionView {
    
    weak var presentDelegate: PhotoToFriendDelegate?
    var photos = [Photo]()
    
    init() {
        let layout = UICollectionViewFlowLayout()
        super.init(frame: .zero, collectionViewLayout: layout)
        
        backgroundColor = #colorLiteral(red: 0.1764705926, green: 0.4980392158, blue: 0.7568627596, alpha: 1)
        
        delegate = self
        dataSource = self
        
        register(FriendsGaleryCell.self, forCellWithReuseIdentifier: FriendsGaleryCell.reuseID)
        
        translatesAutoresizingMaskIntoConstraints = true
        isUserInteractionEnabled = true
        
        layout.minimumLineSpacing = Constraints.galleryMinimumLineSpacing
        contentInset = UIEdgeInsets(top: Constraints.topDistanceToView, left: Constraints.leftDistanceToView, bottom: 0, right: Constraints.rightDistanceToView)
        
        showsHorizontalScrollIndicator = false
        showsVerticalScrollIndicator = false
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func set(photos: [Photo]) {
        self.photos = photos
    }
}

extension GalleryCollection: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return photos.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = dequeueReusableCell(withReuseIdentifier: FriendsGaleryCell.reuseID, for: indexPath)
        return cell
    }
}

extension GalleryCollection: UICollectionViewDelegate {
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        presentDelegate?.showPresenter(photos: photos, selectedPhoto: indexPath.item)
    }
}

struct Constraints {
    static let leftDistanceToView: CGFloat = 20
    static let rightDistanceToView: CGFloat = 20
    static let topDistanceToView: CGFloat = 20
    static let galleryMinimumLineSpacing: CGFloat = 10
    static let galleryItemWidth = (UIScreen.main.bounds.width - Constraints.leftDistanceToView - Constraints.rightDistanceToView - Constraints.galleryMinimumLineSpacing)
}
