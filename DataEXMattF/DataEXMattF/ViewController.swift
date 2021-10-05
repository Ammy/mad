//
//  ViewController.swift
//  DataEXMattF
//
//  Created by Matt Frank Futchko on 10/5/21.
//

import UIKit

class ViewController: UIViewController {
    @IBAction func MySaveB(_ sender: UIButton) {
        UserDefaults.standard.set(mySerialNum.text, forKey: "Text")
        UserDefaults.standard.set(mySwitch.isOn, forKey: "Switch")
        UserDefaults.standard.set(mySlider.value, forKey: "Slider")
    }
    @IBAction func MyLoadB(_ sender: UIButton) {
        mySerialNum.text = UserDefaults.standard.string(forKey: "Text")
        mySwitch.isOn = UserDefaults.standard.bool(forKey: "Switch")
        mySlider.value = UserDefaults.standard.float(forKey: "Slider")
    }
    @IBAction func MyDeleteB(_ sender: UIButton) {
        mySwitch.isOn = true
        mySlider.value = 0.5
        mySerialNum.text = ""
    }
    @IBOutlet weak var mySerialNum: UITextField!
    @IBOutlet weak var mySwitch: UISwitch!
    @IBOutlet weak var mySlider: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

