//
//  FriendsController.swift
//  VK app
//
//  Created by Maxim Bekmetov on 11.04.2021.
//

import UIKit

class UserViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var searchBar: UISearchBar!
    @IBOutlet weak var latersControl: LettersControl!
    
    
    var friend = [Friend.Model]()
    var firstLetters = [String]()
    
    var isSearch = false
    var filtered = String()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // tableView.headerView(forSection: 1)
        
        friend = Friend.list
        friend.sort {$0.name < $1.name}
        firstLetters = Array(Set(friend.map { String($0.name.first ?? "*")})).sorted()
        
        latersControl.letters = firstLetters
        latersControl.setupView()
        
        latersControl.addTarget(self, action: #selector(lettersControlUpdate), for: .valueChanged)
        
        //tableView.dataSource = self
        // searchBar.delegate = self
    }
    
    @objc func lettersControlUpdate() {
        guard let letter = latersControl.selectedLetter else {
            return
        }
        lettersDidSelect(letter)
    }
    
    func lettersDidSelect(_ letter: String) {
        let index = friend.firstIndex { (friend) -> Bool in
            String(friend.name.first!) == letter
        }
        
        guard let indexRow = index else {
            return
        }
        
        tableView.scrollToRow(at: IndexPath(row: indexRow, section: 0), at: .top, animated: true)
    }
    
    // MARK: - Table view data source
    func numberOfSections(in tableView: UITableView) -> Int {
        return friend.count
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return friend.count
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }
    
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let uv = UIView()
        uv.backgroundColor = UIColor.systemGray
        
        let label = UILabel(frame: CGRect(x:15, y: 0, width: view.frame.size.width, height: 40))
        label.text = friend[section].name.prefix(1).capitalized
        label.tintColor = .red
        
        uv.addSubview(label)
        
        return uv
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "friendCell", for: indexPath) as? UserCell else { return UITableViewCell()}
        
        // if friends[indexPath.row].name.prefix(1).contains(String())   {
        cell.configure(image: friend[indexPath.row].avatar, name: friend[indexPath.row].fullName)
        // }
        
        return cell
    }
    
         override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
            guard
                segue.identifier == "showUserPhotos",
                let destination = segue.destination as? FriendsPhotoCollection,
                let index = tableView.indexPathForSelectedRow?.row
            else { return }
            destination.userImages = friend[index].photos
    
        }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
    }
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            friend.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: .automatic)
        }
    }
}

//extension StringProtocol {
//    var firstUppercased: String { prefix(1).uppercased() + dropFirst() }
//    var firstCapitalized: String { prefix(1).capitalized + dropFirst() }
//}
//
//
//// MARK: UISearchBarDelegate
//extension UserTableViewController: UISearchBarDelegate {
//
//    func searchBarCancelButtonClicked(_ searchBar: UISearchBar) {
//    }
//
//    func updateSearchResults(for searchController: UISearchController) {
//        // If we haven't typed anything into the search bar then do not filter the results
//        if searchController.searchBar.text! == "" {
//
//        } else {
//            // Filter the results
//            //  filtered = friends.filter { $0.name.lowercased().contains(searchController.searchBar.text!.lowercased()) }
//        }
//
//        self.tableView.reloadData()
//    }
//}
