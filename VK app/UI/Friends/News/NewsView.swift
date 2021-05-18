//
//  NewsView.swift
//  VK app
//
//  Created by Maxim Bekmetov on 18.05.2021.
//

import UIKit

class NewsTableView: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    
    var news = [News]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.register(UINib(nibName: "NewsCellXib", bundle: nil), forCellReuseIdentifier: NewsCellXib.reusedId)
        
    }
}

extension NewsTableView: UITableViewDelegate {
    
}

extension NewsTableView: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return news.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: NewsCellXib.reusedId, for: indexPath) as! NewsCellXib
        
        
        
        let news = news[indexPath.row]
        
        cell.configure(news)
        
        
        return cell
    }
    
    
}


