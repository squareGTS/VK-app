//
//  FriendsGalery.swift
//  VK app
//
//  Created by Maxim Bekmetov on 01.06.2021.
//

import UIKit

class FriendsGaleryCell: UICollectionViewCell {
    
    static var reuseID = "FriendsGaleryCell"
    
    var likeControl = LikeControl()
    
    let imageView: UIImageView = {
        let imageView = UIImageView()
        imageView.layer.cornerRadius = 10
        imageView.layer.borderWidth = 2
        imageView.layer.borderColor = #colorLiteral(red: 0.8549019694, green: 0.250980407, blue: 0.4784313738, alpha: 1)
            imageView.layer.masksToBounds = false
        imageView.backgroundColor = #colorLiteral(red: 0.9764705896, green: 0.850980401, blue: 0.5490196347, alpha: 1)
            imageView.contentMode = .scaleToFill
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    let shadowView: UIView = {
        let shadowView = UIView()
        shadowView.backgroundColor = #colorLiteral(red: 0.1960784346, green: 0.3411764801, blue: 0.1019607857, alpha: 1)
            shadowView.layer.cornerRadius = 10
        shadowView.layer.shadowOpacity = 1
        shadowView.layer.shadowColor = #colorLiteral(red: 0.5568627715, green: 0.3529411852, blue: 0.9686274529, alpha: 1)
            shadowView.layer.shadowOffset = CGSize(width: 4, height: 4)
        shadowView.layer.shadowRadius = 4
        shadowView.translatesAutoresizingMaskIntoConstraints = false
        return shadowView
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        addSubview(shadowView)
        addSubview(imageView)
        
        setLikeControl()
        
        imageView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 8).isActive = true
        imageView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -8).isActive = true
        imageView.topAnchor.constraint(equalTo: topAnchor, constant: 8).isActive = true
        imageView.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -8).isActive = true
        
        shadowView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 8).isActive = true
        shadowView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -8).isActive = true
        shadowView.topAnchor.constraint(equalTo: topAnchor, constant: 8).isActive = true
        shadowView.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -8).isActive = true
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setLikeControl() {
        
        addSubview(likeControl)
        likeControl.translatesAutoresizingMaskIntoConstraints = false
        
        likeControl.leadingAnchor.constraint(equalTo: imageView.leadingAnchor, constant: 0).isActive = true
        likeControl.trailingAnchor.constraint(equalTo: imageView.trailingAnchor, constant: 0).isActive = true
        likeControl.bottomAnchor.constraint(equalTo: imageView.bottomAnchor, constant: 0.15).isActive = true
        likeControl.topAnchor.constraint(equalTo: imageView.topAnchor, constant: 0.15).isActive = true
    }
}
