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
    @IBOutlet weak var skill5: UIButton!
    @IBOutlet weak var skill6: UIButton!
    @IBOutlet weak var skill7: UIButton!
    @IBOutlet weak var skill8: UIButton!
    @IBOutlet weak var skill9: UIButton!
    @IBOutlet weak var skill10: UIButton!
    @IBOutlet weak var skill11: UIButton!
    @IBOutlet weak var skill12: UIButton!
    @IBOutlet weak var skill13: UIButton!
    @IBOutlet weak var skill14: UIButton!
    @IBOutlet weak var skill15: UIButton!
    @IBOutlet weak var skill16: UIButton!
    @IBOutlet weak var skill17: UIButton!
    @IBOutlet weak var skill18: UIButton!
    @IBOutlet weak var tool1: UIButton!
    @IBOutlet weak var tool2: UIButton!
    @IBOutlet weak var tool3: UIButton!
    @IBOutlet weak var tool4: UIButton!
    @IBOutlet weak var tool5: UIButton!
    @IBOutlet weak var tool6: UIButton!
    @IBOutlet weak var tool7: UIButton!
    @IBOutlet weak var tool8: UIButton!
    @IBOutlet weak var tool9: UIButton!
    @IBOutlet weak var tool10: UIButton!
    @IBOutlet weak var tool11: UIButton!
    @IBOutlet weak var tool12: UIButton!
    @IBOutlet weak var tool13: UIButton!
    @IBOutlet weak var tool14: UIButton!
    @IBOutlet weak var tool15: UIButton!
    @IBOutlet weak var tool16: UIButton!
    @IBOutlet weak var tool17: UIButton!
    @IBOutlet weak var tool18: UIButton!
    @IBOutlet weak var tool19: UIButton!
    @IBOutlet weak var tool20: UIButton!
    @IBOutlet weak var tool21: UIButton!
    @IBOutlet weak var tool22: UIButton!
    @IBOutlet weak var tool23: UIButton!
    @IBOutlet weak var tool24: UIButton!
    @IBOutlet weak var tool25: UIButton!
    @IBOutlet weak var tool26: UIButton!
    @IBOutlet weak var tool27: UIButton!
    @IBOutlet weak var tool28: UIButton!
    @IBOutlet weak var tool29: UIButton!
    @IBOutlet weak var tool30: UIButton!
    @IBOutlet weak var tool31: UIButton!
    @IBOutlet weak var tool32: UIButton!
    @IBOutlet weak var tool33: UIButton!
    @IBOutlet weak var tool34: UIButton!
    @IBOutlet weak var tool35: UIButton!
    @IBOutlet weak var tool36: UIButton!
    @IBOutlet weak var tool37: UIButton!
    @IBOutlet weak var tool38: UIButton!
    @IBOutlet weak var tool39: UIButton!
    @IBOutlet weak var tool40: UIButton!
    @IBOutlet weak var tool41: UIButton!
    @IBOutlet weak var tool42: UIButton!
    @IBOutlet weak var tool43: UIButton!
    @IBOutlet weak var tool44: UIButton!
    @IBOutlet weak var tool45: UIButton!
    @IBOutlet weak var tool46: UIButton!
    @IBOutlet weak var tool47: UIButton!
    @IBOutlet weak var tool48: UIButton!
    
    
    var button = [UIButton]()
    @IBAction func changeLanguage(sender: UIButton) {
        button = [skill1, skill2, skill3, skill4, skill5, skill6, skill7, skill8, skill9, skill10, skill11, skill12, skill13, skill14, skill15, skill16, skill17, skill18, tool1, tool2, tool3, tool4, tool5, tool6, tool7, tool8, tool9, tool10, tool11, tool12, tool13, tool14, tool15, tool16, tool17, tool18, tool19, tool20, tool21, tool22, tool23, tool24, tool25, tool26, tool27, tool28, tool29, tool30, tool31, tool32, tool33, tool34, tool35, tool36, tool37, tool38, tool39, tool40, tool41, tool42, tool43, tool44, tool45, tool46, tool47, tool48]
        for n in 0...65 {
        
        switch sender {
        
        case button[n]:
            if button[n].titleColor(for: .normal) == profColor {
                button[n].setTitleColor(noProfColor, for: .normal)
            }else{
                button[n].setTitleColor(profColor, for: .normal)}

        default:
            if n == 66  {
                print("Unknown button")
                return

            }}
            
        }}
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

