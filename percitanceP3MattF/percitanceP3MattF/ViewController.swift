//
//  ViewController.swift
//  CoreDataMattF
//
//  Created by Matt Frank Futchko on 10/5/21.
//

import UIKit
import Foundation
import CoreData

class ViewController: UIViewController {
    
    var dataManager: NSManagedObjectContext!
    var listArray = [NSManagedObject]()
    @IBAction func saveButton(_ sender: Any) {
        let newEntity = NSEntityDescription.insertNewObject(forEntityName: "Item", into: dataManager)
        newEntity.setValue(enterDesc.text!, forKey: "about")
        do{
            try self.dataManager.save()
            listArray.append(newEntity)
        }catch{
            print("Error Saving Data")
        }
        displayData.text?.removeAll()
        enterDesc.text?.removeAll()
        fetchData()
        
        
        
    }
    @IBAction func deleteButton(_ sender: Any) {
        let deleteItem = enterDesc.text!
        for item in listArray {
            if item.value(forKey: "about")as! String == deleteItem {
                dataManager.delete(item)
            }
            
        }
        do{
            try self.dataManager.save()
        }catch{
            print("Error deleting data")
        }
        displayData.text?.removeAll()
        enterDesc.text?.removeAll()
        fetchData()
        
    }
    @IBOutlet weak var enterDesc: UITextField!
    @IBOutlet weak var displayData: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        let appDelegate = UIApplication.shared.delegate as! AppDelegate
        dataManager = appDelegate.persistentContainer.viewContext
        displayData.text?.removeAll()
        fetchData()
    }
    func fetchData(){
        let fetchRequest : NSFetchRequest<NSFetchRequestResult> = NSFetchRequest(entityName: "Item")
        do{
            let result = try dataManager.fetch(fetchRequest)
            listArray = result as! [NSManagedObject]
            for item in listArray {
                let product = item.value(forKey: "about") as! String
                
                displayData.text! += product
            }
            
        }catch{
                print("Error retriving data")
            }
            
        
        
    }

}

