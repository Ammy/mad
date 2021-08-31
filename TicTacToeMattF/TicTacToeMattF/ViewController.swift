//
//  ViewController.swift
//  TicTacToeMattF
//
//  Created by Matt Frank Futchko on 8/31/21.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var turn: UILabel!
    var XorO = true
    @IBOutlet weak var SQ1Title: UIButton!
    @IBOutlet weak var SQ2Title: UIButton!
    @IBOutlet weak var SQ3Title: UIButton!
    @IBOutlet weak var SQ4Title: UIButton!
    @IBOutlet weak var SQ5Title: UIButton!
    @IBOutlet weak var SQ6Title: UIButton!
    @IBOutlet weak var SQ7Title: UIButton!
    @IBOutlet weak var SQ8Title: UIButton!
    @IBOutlet weak var SQ9Title: UIButton!

    @IBAction func square1(_ sender: UIButton) {
        if XorO == true{
            SQ1Title.setTitle("X", for: .normal)
            XorO = false
            turn.text = String(XorO)
        }
        else{ SQ1Title.setTitle("O", for: .normal)
            XorO = true
            turn.text = String(XorO)

        }
        
    }
    @IBAction func square2(_ sender: UIButton) { if XorO == true{
        SQ2Title.setTitle("X", for: .normal)
        XorO = false
        turn.text = String(XorO)


    }
    else{ SQ2Title.setTitle("O", for: .normal)
        XorO = true
        turn.text = String(XorO)

}
    }
    
    @IBAction func square3(_ sender: UIButton) {
        if XorO == true{
            SQ3Title.setTitle("X", for: .normal)
            XorO = false
            turn.text = String(XorO)


        }
        else{ SQ3Title.setTitle("O", for: .normal)
            XorO = true
            turn.text = String(XorO)

    }


    }
    @IBAction func square4(_ sender: UIButton) {
        if XorO == true{
            SQ4Title.setTitle("X", for: .normal)
            XorO = false
            turn.text = String(XorO)


        }
        else{ SQ4Title.setTitle("O", for: .normal)}
        XorO = true
        turn.text = String(XorO)

    }
    @IBAction func square5(_ sender: UIButton) {
        if XorO == true{
            SQ5Title.setTitle("X", for: .normal)
            XorO = false
            turn.text = String(XorO)


        }
        else{ SQ5Title.setTitle("O", for: .normal)}
        XorO = true
        turn.text = String(XorO)


    }
    @IBAction func square6(_ sender: UIButton) {
        if XorO == true{
            SQ6Title.setTitle("X", for: .normal)
            XorO = false
            turn.text = String(XorO)


        }
        else{ SQ6Title.setTitle("O", for: .normal)
            XorO = true
            turn.text = String(XorO)


        }
    }
    @IBAction func square7(_ sender: UIButton) {
        if XorO == true{
            SQ7Title.setTitle("X", for: .normal)
            XorO = false
            turn.text = String(XorO)


        }
        else{ SQ7Title.setTitle("O", for: .normal)}
        XorO = true
        turn.text = String(XorO)


    }
    @IBAction func square8(_ sender: UIButton) {
        if XorO == true{
            SQ8Title.setTitle("X", for: .normal)
            XorO = false
            turn.text = String(XorO)


        }
        else{ SQ8Title.setTitle("O", for: .normal)}
        XorO = true
        turn.text = String(XorO)


    }
    @IBAction func square9(_ sender: UIButton) {
        if XorO == true{
            SQ9Title.setTitle("X", for: .normal)
            XorO = false
            turn.text = String(XorO)


        }
        else{ SQ9Title.setTitle("O", for: .normal)
            XorO = true
            turn.text = String(XorO)

    }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

