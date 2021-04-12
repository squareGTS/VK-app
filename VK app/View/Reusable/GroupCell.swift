//
//  GroupCell.swift
//  VK app
//
//  Created by Maxim Bekmetov on 11.04.2021.
//

import UIKit

class GroupCell: UITableViewCell {

    @IBOutlet weak var groupName: UILabel!
    
    
    func configure(image: UIImage, name: String) {
        groupName.text = name
       // photoOfFriend.image = image
    }
}
