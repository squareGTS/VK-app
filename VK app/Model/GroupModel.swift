//
//  GroupModel.swift
//  VK app
//
//  Created by Maxim Bekmetov on 11.04.2021.
//

import UIKit

struct GroupModel: Equatable {
    var avatar: UIImage
    var groupName: String
    
    static func == (lhs: Self, rhs: Self) -> Bool {
        lhs.groupName == rhs.groupName
    }
}

