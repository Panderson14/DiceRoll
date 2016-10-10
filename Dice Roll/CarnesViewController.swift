//
//  CarnesViewController.swift
//  Dice Roll
//
//  Created by Patrick Anderson on 10/9/16.
//  Copyright © 2016 Patrick Anderson. All rights reserved.
//

import UIKit

class CarnesViewController: UIViewController {
    
    var playerScore = 0;
    var playerBank = 0;
    var cpuScore = 0;
    var cpuBank = 0;


    @IBOutlet weak var dice: UIImageView!
    @IBOutlet weak var playerDisplay: UILabel!
    @IBOutlet weak var cpuDisplay: UILabel!
    
    
    @IBAction func roll(_ sender: AnyObject) {
        
        let diceRoll = Int(arc4random_uniform(6) + 1)
        
        switch diceRoll {
        case 1:
            dice.image = UIImage(named:"Dice1")
            playerBank = 0;
        case 2:
            dice.image = UIImage(named:"Dice2")
            playerBank += 2;
        case 3:
            dice.image = UIImage(named:"Dice3")
            playerBank += 3;
        case 4:
            dice.image = UIImage(named:"Dice4")
            playerBank += 4;
        case 5:
            dice.image = UIImage(named:"Dice5")
            playerBank += 5;
        default:
            dice.image = UIImage(named:"Dice6")
            playerBank += 6;
        }
        
        playerDisplay.text = "\(playerScore + playerBank)"
    }
    
    
    @IBAction func hold(_ sender: AnyObject) {
        playerScore += playerBank;
        playerBank = 0;
    }
    
    @IBAction func reset(_ sender: AnyObject) {
        playerScore = 0
        playerBank = 0
        cpuScore = 0
        cpuBank = 0
        playerDisplay.text = "\(playerScore + playerBank)"
        cpuDisplay.text = "\(cpuScore + cpuBank)"
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
