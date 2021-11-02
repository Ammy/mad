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
    
    var noProfColor = UIColor.systemBlue
    var profColor = UIColor.black
    @IBOutlet weak var charName: UITextField!
    @IBOutlet weak var levelSelect: UIStepper!
    @IBOutlet weak var level: UILabel!
    @IBOutlet weak var race: UIPickerView!
    @IBOutlet weak var mainClass: UIPickerView!
    @IBOutlet weak var subclass: UIPickerView!
    @IBOutlet weak var expertise: UISegmentedControl!
    @IBAction func expertiseCheck(_ sender: Any) {
    switch expertise.selectedSegmentIndex
            {
            case 0:
                profColor = UIColor.black
                return
            case 1:
               profColor = UIColor.systemRed
                return
            default:
                break
            }
    }
    @IBOutlet weak var skill1: UIButton!
    @IBOutlet weak var skill2: UIButton!
    @IBOutlet weak var skill3: UIButton!
    @IBOutlet weak var skill4: UIButton!
    var button = [UIButton]()
    @IBAction func changeLanguage(sender: UIButton) {
        button = [skill1, skill2, skill3, skill4]
        for n in 0...3 {
        
        switch sender {
        
        case button[n]:
            if button[n].titleColor(for: .normal) == profColor {
                button[n].setTitleColor(noProfColor, for: .normal)
            }else{
                button[n].setTitleColor(profColor, for: .normal)}

        default:
            
            print("Unknown button")
            
        }}
    }
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

