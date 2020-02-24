//
//  ExpandedResultsViewController.swift
//  ChemistryQuiz
//
//  Created by Zach Phelps on 9/27/19.
//  Copyright © 2019 Zach Phelps. All rights reserved.
//

import UIKit

class ExpandedResultsViewController: UIViewController {

    @IBOutlet var expandedQuestionView: UITextView!
    @IBOutlet var answerLabel: UILabel!
    @IBOutlet var explanationLabel: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        expandedQuestionView.text = missedQuestionsText[questionIndex]
        
        answerLabel.text = missedQuestionsAns[questionIndex]
        
        explanationLabel.text = missedQuestionExplanations[questionIndex]
    }
    

}
