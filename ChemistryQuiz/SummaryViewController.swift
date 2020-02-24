//
//  SummaryViewController.swift
//  ChemistryQuiz
//
//  Created by Zach Phelps on 9/29/19.
//  Copyright © 2019 Zach Phelps. All rights reserved.
//

import UIKit
import ProgressHUD

class SummaryViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet var numPointsLabel: UILabel!
    @IBOutlet var perfectScoreLabel: UILabel!
    @IBOutlet var playerNameTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        numPointsLabel.text = String(currentUserScore)
        
        playerNameTextField.delegate = self

    }
    
    func isARepeatName() -> Bool{
        if(leaderboard.count == 0) {
            return false
        }
        else {
            for i in 0...(leaderboard.count-1) {
                if(leaderboard[i] == playerNameTextField.text) {
                    return true
                }
            }
        }
        return false
    }
    
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        let maxLength = 8
        let currentString: NSString = playerNameTextField.text! as NSString
        let newString: NSString =
            currentString.replacingCharacters(in: range, with: string) as NSString
        return newString.length <= maxLength
    }
    
    @IBAction func missedQuestionsBtnPressed(_ sender: Any) {
        if(missedQuestionsText.count > 0) {
            performSegue(withIdentifier: "missedQuestionsSegue", sender: nil)
        }
        else {
            ProgressHUD.showError("No Missed Questions!");
        }
    }
    
    @IBAction func closeButtonPressed(_ sender: Any) {
        if(playerNameTextField.text == "") {
            ProgressHUD.showError("Enter Player Name")
        }
        else if(isARepeatName() == true) {
            ProgressHUD.showError("Name has already been used!");
        }
        else {
            leaderboard.append(playerNameTextField.text!)
            print(leaderboard)
            performSegue(withIdentifier: "goToHomeFromSummary", sender: nil)
        }
        
    }
    
}
