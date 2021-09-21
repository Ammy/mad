//
//  ViewController.swift
//  MiniAppMattF
//
//  Created by Matt Frank Futchko on 9/21/21.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var count: UILabel!
    @IBOutlet weak var startButton: UIButton!
    @IBOutlet weak var time: UIDatePicker!
    var end = 1
    func refresh(){
        let timing = self.time.countDownDuration
        var decrement = timing
        Timer.scheduledTimer(withTimeInterval: 1.0, repeats: true) { timer in
            if decrement == 0 || self.end == 0{
                timer.invalidate()}
            else{
            decrement = decrement-1
                self.count.text = String(decrement)}
            
        
        }
    }
    @IBAction func Start(_ sender: Any) {
        end = 1
        self.startButton.isHidden = true
        self.refresh()
        count.text = String(time.countDownDuration)
        Timer.scheduledTimer(withTimeInterval: time.countDownDuration, repeats: false, block: { timer in
            self.startButton.isHidden = false
        })
    }
    @IBAction func stop(_ sender: Any) {
        startButton.isHidden = false
        end = 0
        
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

