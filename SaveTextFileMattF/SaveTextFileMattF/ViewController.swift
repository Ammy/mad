//
//  ViewController.swift
//  SaveTextFileMattF
//
//  Created by Matt Frank Futchko on 10/5/21.
//

import UIKit

class ViewController: UIViewController {
    @IBAction func writeText(_ sender: UIButton) {
        let fm = FileManager.default
        let urls = fm.urls(for: .documentDirectory, in: .userDomainMask)
        let url  = urls.last?.appendingPathComponent("file.text")
        do{
            try typeText.text.write(to: url!, atomically: true, encoding: String.Encoding.utf8)
        }catch{
            print("Error writting file")
        }
        
        
        
    }
    @IBAction func readText(_ sender: Any) {
        let fm = FileManager.default
        let urls = fm.urls(for: .documentDirectory, in: .userDomainMask)
        let url = urls.last?.appendingPathComponent("file.text")
        do{
            let fileContent = try String(contentsOf: url!, encoding: String.Encoding.utf8)
            displayText.text = fileContent
        }catch{
            print("Error reading file")
        }
        
        
    }
    @IBOutlet weak var typeText: UITextView!
    @IBOutlet weak var displayText: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        typeText.text =  "Type your new text here"
        displayText.text = ""
    }


}

