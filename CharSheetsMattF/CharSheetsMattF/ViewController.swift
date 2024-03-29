//
//  ViewController.swift
//  CharSheetsMattF
//
//  Created by Matt Frank Futchko on 10/19/21.
//

import UIKit
import Foundation
import CoreData
class ViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {
    
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
    @IBOutlet weak var lang1: UIButton!
    @IBOutlet weak var lang2: UIButton!
    @IBOutlet weak var lang3: UIButton!
    @IBOutlet weak var lang4: UIButton!
    @IBOutlet weak var lang5: UIButton!
    @IBOutlet weak var lang6: UIButton!
    @IBOutlet weak var lang7: UIButton!
    @IBOutlet weak var lang8: UIButton!
    @IBOutlet weak var lang9: UIButton!
    @IBOutlet weak var lang10: UIButton!
    @IBOutlet weak var lang11: UIButton!
    @IBOutlet weak var lang12: UIButton!
    @IBOutlet weak var lang13: UIButton!
    @IBOutlet weak var lang14: UIButton!
    @IBOutlet weak var lang15: UIButton!
    var dataManager: NSManagedObjectContext!
    var listArray = [NSManagedObject]()
    @IBAction func saveButton(_ sender: Any) {
        let newEntity = NSEntityDescription.insertNewObject(forEntityName: "Character", into: dataManager)
        button = [skill1, skill2, skill3, skill4, skill5, skill6, skill7, skill8, skill9, skill10, skill11, skill12, skill13, skill14, skill15, skill16, skill17, skill18, tool1, tool2, tool3, tool4, tool5, tool6, tool7, tool8, tool9, tool10, tool11, tool12, tool13, tool14, tool15, tool16, tool17, tool18, tool19, tool20, tool21, tool22, tool23, tool24, tool25, tool26, tool27, tool28, tool29, tool30, tool31, tool32, tool33, tool34, tool35, tool36, tool37, tool38, tool39, tool40, tool41, tool42, tool43, tool44, tool45, tool46, tool47, tool48]
        var st = ""
        for n in 0...65 {
            if button[n].titleColor(for: .normal) == UIColor.black {
                st = "1"+st
            }else if button[n].titleColor(for: .normal) == UIColor.systemRed{
               st = "2"+st
            }else{
                st="0"+st
            }
            
        }
            print(st)
newEntity.setValue( st, forKey: "profSTL")
                do{
                    try self.dataManager.save()
                    listArray.append(newEntity)
                }catch{
                    print("Error Saving Data")
                }
                fetchData()
            }

        

    var button = [UIButton]()

    @IBAction func changeLanguage(sender: UIButton) {
        button = [skill1, skill2, skill3, skill4, skill5, skill6, skill7, skill8, skill9, skill10, skill11, skill12, skill13, skill14, skill15, skill16, skill17, skill18, tool1, tool2, tool3, tool4, tool5, tool6, tool7, tool8, tool9, tool10, tool11, tool12, tool13, tool14, tool15, tool16, tool17, tool18, tool19, tool20, tool21, tool22, tool23, tool24, tool25, tool26, tool27, tool28, tool29, tool30, tool31, tool32, tool33, tool34, tool35, tool36, tool37, tool38, tool39, tool40, tool41, tool42, tool43, tool44, tool45, tool46, tool47, tool48]
        for n in 0...65 {
        
        switch sender {
        
        case button[n]:
            if button[n].titleColor(for: .normal) == profColor && n < 65 {
                button[n].setTitleColor(noProfColor, for: .normal)
            }else{
                button[n].setTitleColor(profColor, for: .normal)}

        default:
            if n > 66 {
                print("Unknown button")
                return

            }
            
        }}
    }
    func fetchData(){
        let fetchRequest : NSFetchRequest<NSFetchRequestResult> = NSFetchRequest(entityName: "Character")
        do{
            let result = try dataManager.fetch(fetchRequest)
            listArray = result as! [NSManagedObject]
            for item in listArray {
                let product = item.value(forKey: "profSTL") as! String
                
            }
            
        }catch{
                print("Error retriving data")
            }
    
    
    }
   
    @IBOutlet weak var raceChoice: UIPickerView!
    @IBOutlet weak var classChoice: UIPickerView!
    @IBOutlet weak var subClassChoice: UIPickerView!
    let races = ["Dragonborn","Dwarf","Elf","Gnome","Gnome","Half-Elf","Halfling","Half-Orc","Human","Tiefling"]
    var classes:[String] = [String]()
    var Data:[[String]] = [[String]]()
     func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }

    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
            return classes.count
        }
        
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return classes[component]}

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        classChoice.dataSource = self
        classes = ["Barbarian", "Bard", "Cleric", "Druid", "Fighter", "Monk", "Paladin", "Ranger", "Rogue", "Sorcerer", "Warlock", "Wizard"]
        classChoice.delegate = self
        let appDelegate = UIApplication.shared.delegate as! AppDelegate
        dataManager = appDelegate.persistentContainer.viewContext
        fetchData()
       
    }
}





