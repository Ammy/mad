//
//  ViewController.swift
//  CarOptionsMattF
//
//  Created by Matt Frank Futchko on 9/7/21.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {

    @IBOutlet weak var selected: UILabel!
    @IBOutlet weak var allData: UIPickerView!
    @IBAction func carSelecter(_ sender: Any) {
        selected.text  = Data[0][allData.selectedRow(inComponent: 0)] + Data[1][allData.selectedRow(inComponent: 1)] + Data[2][allData.selectedRow(inComponent: 2)]
    }
    
    var Data:[[String]] = [[String]]()
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 3
    }

    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        if component == 0 {
            return Data[0].count
        } else if component == 1 {
            return Data[1].count
        } else{
            return Data[2].count
        }
        
    }

    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return Data[component][row]}
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        allData.delegate = self
        Data = [["All-Season", "Touring", "Performance", "Summer", "Winter"], ["Black", "White", "Silver", "Blue", "Red", "Yellow"], ["3 liters", "3.2 liters", "3.3 liters", "3.5 liters"]]
        allData.dataSource = self

  
    }


}


        



