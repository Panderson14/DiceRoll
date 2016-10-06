//
//  SingleDiceViewController.swift
//  Dice Roll
//
//  Created by Patrick Anderson on 10/5/16.
//  Copyright © 2016 Patrick Anderson. All rights reserved.
//

import UIKit

class SingleDiceViewController: UIViewController {

    @IBOutlet weak var SingleDie: UIImageView!
    
    @IBAction func SingleDieButton(_ sender: AnyObject) {
        
//        for _ in 1...5000 {
//            SingleDie.image = UIImage(named:"Dice1")
//            SingleDie.image = UIImage(named:"Dice2")
//            SingleDie.image = UIImage(named:"Dice3")
//            SingleDie.image = UIImage(named:"Dice4")
//            SingleDie.image = UIImage(named:"Dice5")
//            SingleDie.image = UIImage(named:"Dice6")
//        }
        
        let diceRoll = Int(arc4random_uniform(6) + 1)
        
        switch diceRoll {
        case 1:
            SingleDie.image = UIImage(named:"Dice1")
        case 2:
            SingleDie.image = UIImage(named:"Dice2")
        case 3:
            SingleDie.image = UIImage(named:"Dice3")
        case 4:
            SingleDie.image = UIImage(named:"Dice4")
        case 5:
            SingleDie.image = UIImage(named:"Dice5")
        default:
            SingleDie.image = UIImage(named:"Dice6")
        }
        
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
