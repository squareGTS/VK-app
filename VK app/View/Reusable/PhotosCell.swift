//
//  PhotosCell.swift
//  VK app
//
//  Created by Maxim Bekmetov on 11.04.2021.
//

import UIKit

class PhotosCell: UICollectionViewCell {
    
    @IBOutlet weak var photo: UIImageView!
    @IBOutlet weak var amountOfLikes: UILabel!
    
    var arrayOfLikes = Int()
    
    @IBAction func likeButton(_ sender: UIButton) {
        
        arrayOfLikes += 1
        
        if ((arrayOfLikes % 2) == 0) {
        sender.setImage(UIImage(named: "hartDisLike"), for: .normal)
        } else {
            sender.setImage(UIImage(named: "hartLike"), for: .normal)
        }
        amountOfLikes.text = String(arrayOfLikes)
    }
}
