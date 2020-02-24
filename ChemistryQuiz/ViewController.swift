//
//  ViewController.swift
//  ChemistryQuiz
//
//  Created by Zach Phelps on 9/25/19.
//  Copyright © 2019 Zach Phelps. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var highScoreLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
         
        updateHighScore()
        print(userScores)
        print(leaderboard)
        //Timer.scheduledTimer(timeInterval: 0.5,target: self, selector: #selector(updateHighScore),userInfo: nil,repeats: true)
        
    }
    
    @objc func updateHighScore() {
        var highestScore = 0
        if(userScores == []) {
            highScoreLabel.text = "0"
        }
        else {
            for i in 0...(userScores.count-1) {
                if (userScores[i] > highestScore) {
                    highestScore = userScores[i]
                }
            }
            highScoreLabel.text = String(highestScore)
        }
    }
    
}

