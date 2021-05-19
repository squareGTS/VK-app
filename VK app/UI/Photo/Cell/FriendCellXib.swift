//
//  FriendCell.swift
//  VK app
//
//  Created by Maxim Bekmetov on 16.05.2021.
//

import UIKit

class FriendCellXib: UITableViewCell {
    
    @IBOutlet private weak var shadowView: UIView!
    @IBOutlet private weak var fullNameLabel: UILabel!
    @IBOutlet private weak var photoImageView: UIImageView!
    
    static let reuseIdentifier = "FriendCellXib"
    
    override func awakeFromNib() {
        super.awakeFromNib()
        selectionStyle = .none
    }
    
    override func prepareForReuse() {
        fullNameLabel.text = ""
        photoImageView.image = UIImage(named: "PlaceHolderImage")
    }
    
    func configure(_ friend: Friend) {
        fullNameLabel.text = friend.fullName
        
        if let image = friend.avatar {
            photoImageView.image = image
        } else {
            photoImageView.image = UIImage(named: "PlaceHolderImage")
        }
    }
}
