//
//  ViewController.swift
//  Chap14MattF
//
//  Created by Matt Frank Futchko on 9/28/21.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var petTable: UITableView!
    @IBOutlet weak var pT2: UITableView!
    let petArray = ["cat","dog","parakeet","parrot","canary","finch","tropical fish","goldfish","seahorses","hamster","gerbil","rabbit","turtle","snake","lizard","hermit crab"]
    let petArray2 = [["Mammal", "cat","dog","gerbil","hamster","rabbit"],["Fish","tropical fish","goldfish","seahorses"],["Bird","finch","parrot","parakeet","canary"],["Reptile","turtle","snake","lizard"]]
    let cellID = "cellID"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        petTable.dataSource = self
        petTable.delegate = self
        pT2.dataSource = self
        pT2.delegate = self
        // Do any additional setup after loading the view.
    }
    func tableView(_    tableView: UITableView, didSelectRowAt indexPath:IndexPath){
        let selectedItem = petArray[indexPath.row]
        let alert = UIAlertController(title: "Your Choice", message: "\(selectedItem)", preferredStyle: .alert)
        let  okAction = UIAlertAction(title: "Ok", style: .default, handler: {action-> Void in})
        alert.addAction(okAction)
        self.present(alert, animated: true, completion: nil)
        
    }
    func tableView2(_    tableView: UITableView, didSelectRowAt indexPath:IndexPath){
        let selectedItem = petArray[indexPath.row + 1]
        let alert = UIAlertController(title: "Your Choice", message: "\(selectedItem)", preferredStyle: .alert)
        let  okAction = UIAlertAction(title: "Ok", style: .default, handler: {action-> Void in})
        alert.addAction(okAction)
        self.present(alert, animated: true, completion: nil)
        
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return petArray.count
    }
    func tableView2(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return petArray2.count-1
    }
    func numberOfSections(in tableView: UITableView) -> Int {
        return petArray.count
    }
    func tableView2(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String?{
        return petArray2[section][0]
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        var cell = tableView.dequeueReusableCell(withIdentifier: cellID)
        if(cell == nil){
            cell = UITableViewCell(style: UITableViewCell.CellStyle.default, reuseIdentifier: cellID)
        }
        cell?.textLabel?.text = petArray[indexPath.row]
        return cell!
    }
    func tableView2(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        var cell = tableView.dequeueReusableCell(withIdentifier: cellID)
        if(cell == nil){
            cell = UITableViewCell(style: UITableViewCell.CellStyle.default, reuseIdentifier: cellID)
        }
        cell?.textLabel?.text = petArray[indexPath.row + 1]
        return cell!
    }
    
    
    }



