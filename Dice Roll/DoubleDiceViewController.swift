//
//  SingleDiceViewController.swift
//  Dice Roll
//
//  Created by Patrick Anderson on 10/5/16.
//  Copyright © 2016 Patrick Anderson. All rights reserved.
//

import UIKit

class DoubleDiceViewController: UIViewController {


    @IBOutlet weak var FirstDie: UIImageView!
    @IBOutlet weak var SecondDie: UIImageView!
    
    
    @IBAction func DiceRoll(_ sender: AnyObject) {
        
        let diceRoll1 = Int(arc4random_uniform(6) + 1)
        let diceRoll2 = Int(arc4random_uniform(6) + 1)

        
        switch diceRoll1 {
        case 1:
            FirstDie.image = UIImage(named:"Dice1")
        case 2:
            FirstDie.image = UIImage(named:"Dice2")
        case 3:
            FirstDie.image = UIImage(named:"Dice3")
        case 4:
            FirstDie.image = UIImage(named:"Dice4")
        case 5:
            FirstDie.image = UIImage(named:"Dice5")
        default:
            FirstDie.image = UIImage(named:"Dice6")
        }
        
        switch diceRoll2 {
        case 1:
            SecondDie.image = UIImage(named:"Dice1")
        case 2:
            SecondDie.image = UIImage(named:"Dice2")
        case 3:
            SecondDie.image = UIImage(named:"Dice3")
        case 4:
            SecondDie.image = UIImage(named:"Dice4")
        case 5:
            SecondDie.image = UIImage(named:"Dice5")
        default:
            SecondDie.image = UIImage(named:"Dice6")
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
