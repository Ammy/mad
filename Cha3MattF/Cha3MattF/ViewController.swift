//
//  ViewController.swift
//  Cha3MattF
//
//  Created by Matt Frank Futchko on 8/31/21.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var labelResult: UILabel!
    @IBOutlet weak var TextMessage: UITextField!
    @IBAction func changeButton(_ sender: UIButton) {
        labelResult.text = TextMessage.text?.uppercased()
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

