//
//  GroupModel.swift
//  VK app
//
//  Created by Maxim Bekmetov on 11.04.2021.
//

import UIKit

struct Group: Equatable {
    var avatar: UIImage
    var name: String
    
    static func == (lhs: Self, rhs: Self) -> Bool {
        lhs.name == rhs.name
    }
}

