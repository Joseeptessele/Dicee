//
//  ViewController.swift
//  Dicee
//
//  Created by José Eduardo Pedron Tessele on 14/08/19.
//  Copyright © 2019 José P Tessele. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    let dices = ["dice1","dice2","dice3","dice4","dice5","dice6"]
    var randomDice1: Int = 0
    var randomDice2: Int = 0
    
    @IBOutlet weak var diceImageView1: UIImageView!
    @IBOutlet weak var diceImageView2: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateDiceImages()
    }

    @IBAction func rollButton(_ sender: UIButton) {
        updateDiceImages()
    }
    
    func updateDiceImages(){
        randomDice1 = Int.random(in: 0 ... 5)
        randomDice2 = Int.random(in: 0 ... 5)
        
        print("Dice1: \(randomDice1)\n Dice2: \(randomDice2)")
        
        diceImageView1.image = UIImage(named: dices[randomDice1])
        diceImageView2.image = UIImage(named: dices[randomDice2])
    }
    
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        updateDiceImages()
    }
    
}

