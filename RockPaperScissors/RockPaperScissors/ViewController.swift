//
//  ViewController.swift
//  RockPaperScissors
//
//  Created by Luis Vargas on 6/14/20.
//  Copyright © 2020 Luis Vargas. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    
    
    @IBOutlet weak var userScoreLabel: UILabel!
    @IBOutlet weak var opponentScoreLabel: UILabel!
    
    
    
    @IBOutlet weak var userHandImage: UIImageView!
    @IBOutlet weak var opponentHandImage: UIImageView!
    
    
    var userScore = 0
    var oppScore = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
    
    
    
    @IBAction func Go_Func(_ sender: Any) {
        
        // 1: Scissors
        // 2: Rock
        // 3: Paper
        
        var user_rand = Int.random(in: 1 ... 3)
        var opp_rand = Int.random(in: 1 ... 3)
        
        userHandImage.image = UIImage(named: "hand\(user_rand)")
        
        opponentHandImage.image = UIImage(named: "hand\(opp_rand)")
        
        if (user_rand == 1 && opp_rand == 3) || (user_rand == 2 && opp_rand == 1) || (user_rand == 3 && opp_rand == 2)
        {
            userScore += 1
            userScoreLabel.text = String(userScore)
        }
        else if (opp_rand == 1 && user_rand == 3) || (opp_rand  == 2 && user_rand == 1) || (opp_rand  == 3 && user_rand == 2)
        {
            oppScore += 1
            opponentScoreLabel.text = String(oppScore)
        }
        
        
        
        
    }
    
    


}

