//
//  ViewController.swift
//  Chap14TVIAMattF
//
//  Created by Matt Frank Futchko on 9/30/21.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var petTabel: UITableView!
    let petArray = [["Mammal", "cat","dog","gerbil","hamster","rabbit"],["Fish","tropical fish","goldfish","seahorses"],["Bird","finch","parrot","parakeet","canary"],["Reptile","turtle","snake","lizard"]]
    let indexArray = ["M","F","B","R"]
    let cellID = "cellID"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        petTabel.dataSource = self
        petTabel.delegate = self
        petTabel.sectionIndexColor = UIColor.white
        petTabel.sectionIndexBackgroundColor = UIColor.black
        petTabel.sectionIndexTrackingBackgroundColor=UIColor.darkGray
        // Do any additional setup after loading the view.
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section:Int) -> Int {
        return petArray[section].count - 1
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell{
        var cell = tableView.dequeueReusableCell(withIdentifier: cellID)
        if (cell == nil) {
            cell = UITableViewCell(style: UITableViewCell.CellStyle.default, reuseIdentifier: cellID)
        }
        cell?.textLabel?.text = petArray[indexPath.section][indexPath.row + 1]
        return cell!
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let selectedItem = petArray[indexPath.section][indexPath.row + 1]
        let alert = UIAlertController(title: "Your Choice", message: "\(selectedItem)", preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default, handler: { action -> Void in})
        alert.addAction(okAction)
        self.present(alert, animated: true, completion: nil)
    }
    func numberOfSections(in tableView: UITableView) -> Int {
        return petArray.count
    }
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return petArray[section][0]
    }
    func sectionIndexTitles(for tableView: UITableView) -> [String]? {
        return indexArray
    }
}

