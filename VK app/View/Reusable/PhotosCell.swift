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
        
        
        
        if ((arrayOfLikes % 2) == 0) {
        sender.setImage(UIImage(named: "hartDisLike"), for: .normal)
            arrayOfLikes += 1
        } else {
            sender.setImage(UIImage(named: "hartLike"), for: .normal)
            arrayOfLikes -= 1
        }
        amountOfLikes.text = String(arrayOfLikes)
    }
}
