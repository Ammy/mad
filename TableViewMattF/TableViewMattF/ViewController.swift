//
//  ViewController.swift
//  TableViewMattF
//
//  Created by Matt Frank Futchko on 9/28/21.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource {
    let tableViewData = Array(repeating: "Item", count: 5)
    
    @IBOutlet weak var tableView: UITableView!

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.register(UITableViewCell.self,
                           forCellReuseIdentifier: "TableViewCell")
        tableView.dataSource = self
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.tableViewData.count
    }
        
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "TableViewCell",for: indexPath)
        cell.textLabel?.text = self.tableViewData[indexPath.row]
        return cell
    }
}

