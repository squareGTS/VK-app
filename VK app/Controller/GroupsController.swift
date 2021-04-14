//
//  GroupsController.swift
//  VK app
//
//  Created by Maxim Bekmetov on 12.04.2021.
//

import UIKit

class GroupsController: UITableViewController {
    
    var groups = [GroupModel]()
    
    @IBAction func addGroup(segue: UIStoryboardSegue) {
        guard segue.identifier == "addGroup",
              let allGroupsController = segue.source as? AllGroupsController,
              let indexPath = allGroupsController.tableView.indexPathForSelectedRow
        else { return }
        let group = allGroupsController.groups[indexPath.row]
        if !groups.contains(group) {
            groups.append(group)
            tableView.reloadData()
        }
    }
    
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
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "groupCell") as? GroupCell else { return UITableViewCell() }
        
        let currentGroup = groups[indexPath.row]
        cell.configure(
            image: currentGroup.avatar,
            name: currentGroup.groupName)
        
        return cell
    }
}
