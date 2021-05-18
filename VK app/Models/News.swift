//
//  News.swift
//  VK app
//
//  Created by Maxim Bekmetov on 18.05.2021.
//

import UIKit

struct News {
    
    let avatar: UIImage?
    let creator: String
    let title: String
    let photos: [Photo]
    let date: Date
    
    static var list : [News] = [
        News(avatar: UIImage(named: ""), creator: "", title: "", photos: [Photo(photos: UIImage(named: ""), like: false, count: Int())], date: Date(timeIntervalSinceNow: 0)),
        News(avatar: UIImage(named: ""), creator: "", title: "", photos: [Photo(photos: UIImage(named: ""), like: false, count: Int())], date: Date(timeIntervalSinceNow: 0)),
        News(avatar: UIImage(named: ""), creator: "", title: "", photos: [Photo(photos: UIImage(named: ""), like: false, count: Int())], date: Date(timeIntervalSinceNow: 0)),
        News(avatar: UIImage(named: ""), creator: "", title: "", photos: [Photo(photos: UIImage(named: ""), like: false, count: Int())], date: Date(timeIntervalSinceNow: 0)),
        News(avatar: UIImage(named: ""), creator: "", title: "", photos: [Photo(photos: UIImage(named: ""), like: false, count: Int())], date: Date(timeIntervalSinceNow: 0)),
        News(avatar: UIImage(named: ""), creator: "", title: "", photos: [Photo(photos: UIImage(named: ""), like: false, count: Int())], date: Date(timeIntervalSinceNow: 0)),
    ]
}
