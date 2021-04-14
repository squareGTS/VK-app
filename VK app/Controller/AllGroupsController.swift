//
//  GroupController.swift
//  VK app
//
//  Created by Maxim Bekmetov on 11.04.2021.
//

import UIKit

class AllGroupsController: UITableViewController {
    
    var groups = [GroupModel(avatar:  UIImage(named: "iu-4") ?? UIImage(), groupName: "Stars"),
                  GroupModel(avatar:  UIImage(named: "iu-4") ?? UIImage(), groupName: "Models"),
                  GroupModel(avatar:  UIImage(named: "iu-4") ?? UIImage(), groupName: "Cars"),
                  GroupModel(avatar:  UIImage(named: "iu-4") ?? UIImage(), groupName: "Apple"),
                  GroupModel(avatar:  UIImage(named: "iu-4") ?? UIImage(), groupName: "Audio"),
                  GroupModel(avatar:  UIImage(named: "iu-4") ?? UIImage(), groupName: "Music"),
                  GroupModel(avatar:  UIImage(named: "iu-4") ?? UIImage(), groupName: "PC"),
                  GroupModel(avatar:  UIImage(named: "iu-4") ?? UIImage(), groupName: "Phones"),
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    // MARK: - Table view data source
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return groups.count
    }
    
     override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "groupCell", for: indexPath) as? GroupCell else { return UITableViewCell() }
     
        cell.groupName.text = groups[indexPath.row].groupName
     
     return cell
     }
    
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            groups.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: .automatic)
        }
    }
}
