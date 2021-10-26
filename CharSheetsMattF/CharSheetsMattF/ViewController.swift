//
//  ViewController.swift
//  CharSheetsMattF
//
//  Created by Matt Frank Futchko on 10/19/21.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return 1
    }
    

    @IBOutlet weak var charName: UITextField!
    @IBOutlet weak var levelSelect: UIStepper!
    @IBOutlet weak var level: UILabel!
    @IBOutlet weak var race: UIPickerView!
    @IBOutlet weak var mainClass: UIPickerView!
    @IBOutlet weak var subclass: UIPickerView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

