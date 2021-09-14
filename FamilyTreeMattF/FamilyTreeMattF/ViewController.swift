//
//  ViewController.swift
//  FamilyTreeMattF
//
//  Created by Matt Frank Futchko on 9/14/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var Fam1: UIImageView!
    @IBOutlet weak var Fam2: UIImageView!
    @IBOutlet weak var Fam3: UIImageView!
    @IBOutlet weak var Fam4: UIImageView!
    @IBOutlet weak var Fam5: UIImageView!
    @IBOutlet weak var Fam6: UIImageView!
    @IBOutlet weak var Fam7: UIImageView!
    @IBOutlet weak var Fam8: UIImageView!
    //@IBOutlet weak var Fam9: UIImageView!
    //@IBOutlet weak var Fam10: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        Fam1.image = UIImage(named:"Yancy_Sr")
        Fam2.image = UIImage(named:"Yancy_Jr")
        Fam3.image = UIImage(named:"Philip")
        Fam4.image = UIImage(named:"Philip_II")
        Fam5.image = UIImage(named:"Mildred")
        Fam6.image = UIImage(named:"Yancy_Jr_Wife")
        Fam7.image = UIImage(named:"Mrs_Fry")
        //Fam9.image = UIImage(named:"")
        //Fam10.image = UIImage(named:"")

        
    }

}

