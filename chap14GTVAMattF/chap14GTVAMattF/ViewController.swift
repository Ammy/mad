//
//  ViewController.swift
//  chap14GTVAMattF
//
//  Created by Matt Frank Futchko on 9/30/21.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    @IBOutlet weak var pT2: UITableView!
    let petArray2 = [["Mammal", "cat","dog","gerbil","hamster","rabbit"],["Fish","tropical fish","goldfish","seahorses"],["Bird","finch","parrot","parakeet","canary"],["Reptile","turtle","snake","lizard"]]
    let cellID = "cellID"
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        pT2.dataSource = self
        pT2.delegate = self
    }
   
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return petArray2.count-1
    }
    func numberOfSections(in tableView: UITableView) -> Int {
        return petArray2.count
    }
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String?{
        return petArray2[section][0]
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        var cell = tableView.dequeueReusableCell(withIdentifier: cellID)
        if(cell == nil){
            cell = UITableViewCell(style: UITableViewCell.CellStyle.default, reuseIdentifier: cellID)
        }
        cell?.textLabel?.text = petArray2[indexPath.section][indexPath.row + 1]
        return cell!
    }

}

