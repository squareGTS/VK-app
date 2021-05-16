//
//  FriendsModel.swift
//  VK app
//
//  Created by Maxim Bekmetov on 11.04.2021.
//

import UIKit

class Friend {
    
    
    struct Model {
        var name: String
        var surname: String
        var fullName: String {
            return name + " " + surname
        }
        var avatar: UIImage
        var photos: [Photo]
    }
    
    static var list = [Model.init(name: "Maurisio", surname: "Gonzales", avatar: UIImage(named: "m-1") ?? UIImage(), photos:
                                        [Photo(photos: UIImage(named: "m-1"), like: false, count: 0),
                                         Photo(photos: UIImage(named: "m-2"), like: false, count: 0),
                                         Photo(photos: UIImage(named: "m-3"), like: false, count: 0),
                                         Photo(photos: UIImage(named: "m-4"), like: false, count: 0),
                                         Photo(photos: UIImage(named: "m-5"), like: false, count: 0)
                                        ]),
                          Model.init(name: "Pablo", surname: "Pablitos", avatar: UIImage(named: "p-1") ?? UIImage(), photos:
                                        [Photo(photos: UIImage(named: "p-1"), like: false, count: 0),
                                         Photo(photos: UIImage(named: "p-2"), like: false, count: 0),
                                         Photo(photos: UIImage(named: "p-3"), like: false, count: 0),
                                         Photo(photos: UIImage(named: "p-4"), like: false, count: 0),
                                         Photo(photos: UIImage(named: "p-5"), like: false, count: 0),
                                         Photo(photos: UIImage(named: "p-6"), like: false, count: 0)
                                        ]),
                          Model.init(name: "Yuki", surname: "Obayashi", avatar: UIImage(named: "y-1") ?? UIImage(), photos:
                                        [Photo(photos: UIImage(named: "y-1"), like: false, count: 0),
                                         Photo(photos: UIImage(named: "y-2"), like: false, count: 0),
                                         Photo(photos: UIImage(named: "y-3"), like: false, count: 0),
                                         Photo(photos: UIImage(named: "y-4"), like: false, count: 0),
                                         Photo(photos: UIImage(named: "y-5"), like: false, count: 0),
                                         Photo(photos: UIImage(named: "y-6"), like: false, count: 0)
                                        ]),
                          Model.init(name: "June", surname: "Hobson", avatar: UIImage(named: "j-1") ?? UIImage(), photos:
                                        [Photo(photos: UIImage(named: "j-1"), like: false, count: 0),
                                         Photo(photos: UIImage(named: "j-2"), like: false, count: 0)
                                        ]),
                          Model.init(name: "Samanta", surname: "Majeta", avatar: UIImage(named: "s-1") ?? UIImage(), photos:
                                        [Photo(photos: UIImage(named: "s-1"), like: false, count: 0),
                                         Photo(photos: UIImage(named: "s-2"), like: false, count: 0),
                                         Photo(photos: UIImage(named: "s-3"), like: false, count: 0),
                                         Photo(photos: UIImage(named: "s-4"), like: false, count: 0),
                                         Photo(photos: UIImage(named: "s-5"), like: false, count: 0),
                                         Photo(photos: UIImage(named: "s-6"), like: false, count: 0)
                                        ]),
                          Model.init(name: "Norman", surname: "Vazovski", avatar: UIImage(named: "n-1") ?? UIImage(), photos:
                                        [Photo(photos: UIImage(named: "n-1"), like: false, count: 0),
                                         Photo(photos: UIImage(named: "n-2"), like: false, count: 0),
                                         Photo(photos: UIImage(named: "n-3"), like: false, count: 0),
                                         Photo(photos: UIImage(named: "n-4"), like: false, count: 0),
                                         Photo(photos: UIImage(named: "n-5"), like: false, count: 0)
                                        ]),
    ]
}
