//
//  GroupController.swift
//  VK app
//
//  Created by Maxim Bekmetov on 11.04.2021.
//

import UIKit

class AllGroupsController: UITableViewController {
    
    var groups = [Group(avatar:  UIImage(named: "g-1") ?? UIImage(), name: "Stars"),
                  Group(avatar:  UIImage(named: "g-2") ?? UIImage(), name: "Models"),
                  Group(avatar:  UIImage(named: "g-3") ?? UIImage(), name: "Cars"),
                  Group(avatar:  UIImage(named: "g-4") ?? UIImage(), name: "Apple"),
                  Group(avatar:  UIImage(named: "g-5") ?? UIImage(), name: "Audio"),
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
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 60
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "groupCell", for: indexPath) as? GroupCell else { return UITableViewCell() }
        
        let curentGroup = groups[indexPath.row]
        cell.configure(image: curentGroup.avatar, name: curentGroup.name)
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            groups.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: .automatic)
        }
    }
}
