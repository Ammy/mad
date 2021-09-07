//
//  ViewController.swift
//  Test
//
//  Created by Matt Frank Futchko on 9/7/21.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var alldata: UIPickerView!
    var Data: [[String]] = [[String]]()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        Data = [["All-Season", "Touring", "Performance", "Summer", "Winter"], ["Black", "White", "Silver", "Blue", "Red", "Yellow"], ["Item 1", "Item 2", "Item 3", "Item 4", "Item 5", "Item 6"]]

    }


}

