//
//  NewsCellXib.swift
//  VK app
//
//  Created by Maxim Bekmetov on 18.05.2021.
//

import UIKit

class NewsCellXib: UITableViewCell {
    
    static let reusedId = "NewsCellXib"
    
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    @IBOutlet weak var photoLabel: UIImageView!
    @IBOutlet weak var likeControl: LikeControl!
    
    func configure(_ news: News) {
        titleLabel.text = news.title
        descriptionLabel.text = news.title
        
        
        if let image = news.avatar {
            photoLabel.image = image
        } else {
            photoLabel.image = UIImage(named: "PlaceHolderImage")
        }
    }
}
