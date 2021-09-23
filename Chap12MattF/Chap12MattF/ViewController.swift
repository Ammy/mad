//
//  ViewController.swift
//  Chap12MattF
//
//  Created by Matt Frank Futchko on 9/23/21.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {
    
    @IBOutlet weak var myPicker: UIPickerView!
    var pickerData: [String] = [String]()
    @IBOutlet weak var lableResult: UILabel!
    @IBOutlet weak var lRP3: UILabel!
    @IBOutlet weak var myDatePicker: UIDatePicker!
    let dateFormater: DateFormatter = DateFormatter()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        lableResult.numberOfLines = 0
        lRP3.numberOfLines = 0
        dateFormater.dateStyle = .short
        dateFormater.timeStyle = .short
        myPicker.delegate = self
        myPicker.dataSource = self
        pickerData = ["cat","dog","hamster","lizard","parrot","goldfish"]
    }
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    func pickerView(_ pickerView:UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return pickerData.count
    }
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return pickerData[row]
    }
    @IBAction func bTP5(_ sender: Any) {
        let pickerIndex = myPicker.selectedRow(inComponent: 0)
        let alert = UIAlertController(title: "Your Choice", message: "\(pickerData[pickerIndex])", preferredStyle: .alert)
        let okAction = UIAlertAction(title: "Ok", style: .default, handler:{action -> Void in
            //dismiss the action sheet
            })
        alert.addAction(okAction)
        self.present(alert, animated: true, completion: nil)
    }
    @IBAction func buttonTapped(_ sender: UIButton) {
        let alert = UIAlertController(title: "Warning", message: "Zombies are loose!", preferredStyle: .alert)
        let okAction = UIAlertAction(title: "Ok", style: .default, handler:{action -> Void in
        //dismiss the action sheet
        })
        alert.addAction(okAction)
        self.present(alert, animated: true, completion: nil)
    }
    @IBAction func bTappedP2(_ sender: Any) {
        let alert = UIAlertController(title: "Warning", message: "Zombies are loose!", preferredStyle: .alert)
    let okAction = UIAlertAction(title: "Ok", style: .default, handler:{action -> Void in self.lableResult.text = "ok"})
        let cancelAction = UIAlertAction(title: "Cancel", style: .cancel, handler:{action -> Void in self.lableResult.text = "Cancel"})
        let destroyAction = UIAlertAction(title: "Destroy", style: .destructive, handler:{action -> Void in self.lableResult.text = "Destroy"})
        alert.addAction(okAction)
        alert.addAction(cancelAction)
        alert.addAction(destroyAction)
        self.present(alert, animated: true, completion: nil)

        
    
}
    @IBAction func bTP3(_ sender: Any) {
        let alert = UIAlertController(title: "Log In", message: "Enter Password", preferredStyle: .alert)
        alert.addTextField(configurationHandler:{ (textField) in textField.placeholder = "Password Here"
            textField.isSecureTextEntry = true
        })
        let okAction = UIAlertAction(title: "Ok", style: .default, handler:{action -> Void in
        let savedText = alert.textFields![0] as UITextField
                                        
        self.lRP3.text = savedText.text})
        alert.addAction(okAction)
        self.present(alert, animated: true, completion: nil)
        
        }
    func ShowAlert(dateTime:String){
        let alert = UIAlertController(title: "Selected Date and Time", message: "\(dateTime)", preferredStyle: .alert)
        let okAction = UIAlertAction(title: "Ok", style: .default, handler:{action -> Void in
            //dismiss the action sheet
            })
        alert.addAction(okAction)
        self.present(alert, animated: true, completion: nil)
        
        
    }
    @IBAction func getCurentDateTime(_ sender: Any) {
        let selectedDate: String = dateFormater.string(from: myDatePicker.date)
        ShowAlert(dateTime: selectedDate)
    }
    
    @IBAction func dateChanged(_ sender: UIDatePicker) {
        let selectedDate = dateFormater.string(from: sender.date)
        ShowAlert(dateTime: selectedDate)
        
        
    }
}
