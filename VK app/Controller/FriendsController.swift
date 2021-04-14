//
//  FriendsController.swift
//  VK app
//
//  Created by Maxim Bekmetov on 11.04.2021.
//

import UIKit

class FriendsController: UITableViewController {
    
    
    
    var friends = [FriendModel(name: "Maurisio", surname: "Gonzales", avatar: UIImage(named: "iu-1") ?? UIImage()),
                   FriendModel(name: "Pablo", surname: "Pablitos", avatar: UIImage(named: "iu-2") ?? UIImage()),
                   FriendModel(name: "Yuki", surname: "Obayashi", avatar: UIImage(named: "iu-3") ?? UIImage()),
                   FriendModel(name: "June", surname: "Hobson", avatar: UIImage(named: "iu-4") ?? UIImage()),
                   FriendModel(name: "Samanta", surname: "Majeta", avatar: UIImage(named: "iu-5") ?? UIImage()),
                   FriendModel(name: "Norman", surname: "Vazovski", avatar: UIImage(named: "iu-6") ?? UIImage()),
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    // MARK: - Table view data source
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return friends.count
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "friendCell", for: indexPath) as? FriendCell else { return UITableViewCell()}
        
        cell.configure(image: friends[indexPath.row].avatar, name: friends[indexPath.row].fullName)
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            friends.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: .automatic)
        }
    }
}
