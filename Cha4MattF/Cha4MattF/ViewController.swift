//
//  ViewController.swift
//  Cha3MattF
//
//  Created by Matt Frank Futchko on 8/31/21.
//

import UIKit
// MARK: ALL Properties
class ViewController: UIViewController {
    // MARK: Properties
    @IBOutlet var labelResult: UILabel!
    @IBOutlet weak var textDisplay: UITextField!
    // MARK: Methods
    @IBAction func changeButton(_ sender: UIButton) {
        labelResult.text = textDisplay.text?.uppercased()
        print(labelResult.text!)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

