//
//  ViewController.swift
//  CardGame
//
//  Created by Shane Noonan on 29/07/2016.
//  Copyright © 2016 Shane Noonan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var backgroundImage: UIImageView!
    @IBOutlet weak var firstCardImage: UIImageView!
    @IBOutlet weak var secondCardImage: UIImageView!
    @IBOutlet weak var dealButton: UIButton!
    @IBOutlet weak var player1score: UILabel!
    @IBOutlet weak var score1Label: UILabel!
    @IBOutlet weak var player2score: UILabel!
    @IBOutlet weak var score2Label: UILabel!
    
    var cardNameArray:[String] = ["card0", "card1", "card2", "card3", "card4"]
    var playerscore1:Int = 0
    var playerscore2:Int = 0
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func playRoundTapped(_ sender: AnyObject) {
        
        //randomize numbers
        let firstRandomNumber:Int = Int(arc4random_uniform(5))
        let secondRandomNumber = Int(arc4random_uniform(5))
        
        //create custom string with random number
        //using array
        let firstCardString = self.cardNameArray[firstRandomNumber]
        //using string format
        let secondCardString = String(format: "card%i", secondRandomNumber)
        
        //set imageview to UIimage using custom string created
        self.firstCardImage.image = UIImage(named: firstCardString)
        self.secondCardImage.image = UIImage(named: secondCardString)
        
        //determine higher card
        
        if firstRandomNumber > secondRandomNumber
        {
            self.playerscore1 += 1
            self.player1score.text = String(self.playerscore1)
        }
        else if firstRandomNumber == secondRandomNumber
        {
            
        }
        else
        {
            self.playerscore2 += 1
            self.player2score.text = String(self.playerscore2)
        }
    }

}

