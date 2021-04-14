//
//  FriendsModel.swift
//  VK app
//
//  Created by Maxim Bekmetov on 11.04.2021.
//

import UIKit

struct FriendModel {
    var name: String
    var surname: String
    var avatar: UIImage
    var fullName: String {
        return name + " " + surname
    }
}
