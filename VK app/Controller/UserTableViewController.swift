//
//  FriendsController.swift
//  VK app
//
//  Created by Maxim Bekmetov on 11.04.2021.
//

import UIKit

class UserTableViewController: UITableViewController {
    
    @IBOutlet weak var searchBar: UISearchBar!
    
    
    var friends = [Friend(name: "Maurisio", surname: "Gonzales", avatar: UIImage(named: "iu-1") ?? UIImage()),
                   Friend(name: "Pablo", surname: "Pablitos", avatar: UIImage(named: "iu-2") ?? UIImage()),
                   Friend(name: "Yuki", surname: "Obayashi", avatar: UIImage(named: "iu-3") ?? UIImage()),
                   Friend(name: "June", surname: "Hobson", avatar: UIImage(named: "iu-4") ?? UIImage()),
                   Friend(name: "Samanta", surname: "Majeta", avatar: UIImage(named: "iu-5") ?? UIImage()),
                   Friend(name: "Norman", surname: "Vazovski", avatar: UIImage(named: "iu-6") ?? UIImage()),]
    
    var t = [Character]()
    var isSearch = false
    var filtered = String()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.headerView(forSection: 1)
        
        for i in friends {
            t.append(contentsOf: i.name.prefix(1).capitalized)
        }
        
        searchBar.delegate = self
    }
    
    // MARK: - Table view data source
    override func numberOfSections(in tableView: UITableView) -> Int {
        return friends.count
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return friends.count
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }
    
    
    override func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let vw = UIView()
        vw.backgroundColor = UIColor.systemGray

        let label = UILabel(frame: CGRect(x:15, y: 0, width: view.frame.size.width, height: 40))
        label.text = friends[section].name.prefix(1).capitalized
        label.tintColor = .red
        
        vw.addSubview(label)
        
        return vw
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "friendCell", for: indexPath) as? UserCell else { return UITableViewCell()}
        
        if friends[indexPath.row].name.prefix(1).contains(String())   {
            cell.configure(image: friends[indexPath.row].avatar, name: friends[indexPath.row].fullName)
        }
        
        
        return cell
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard
            segue.identifier == "showUserPhotos",
            let destination = segue.destination as? FriendsPhotoCollection,
            let index = tableView.indexPathForSelectedRow?.row
        else { return }
        destination.userImages = [friends[index].avatar]
        
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
    }
    
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            friends.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: .automatic)
        }
    }
}

extension StringProtocol {
    var firstUppercased: String { prefix(1).uppercased() + dropFirst() }
    var firstCapitalized: String { prefix(1).capitalized + dropFirst() }
}


// MARK: UISearchBarDelegate
extension UserTableViewController: UISearchBarDelegate {
    
    func searchBarCancelButtonClicked(_ searchBar: UISearchBar) {
    }
    
    func updateSearchResults(for searchController: UISearchController) {
          // If we haven't typed anything into the search bar then do not filter the results
          if searchController.searchBar.text! == "" {
             
          } else {
          // Filter the results
          //  filtered = friends.filter { $0.name.lowercased().contains(searchController.searchBar.text!.lowercased()) }
          }
          
          self.tableView.reloadData()
      }
}
