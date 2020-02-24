//
//  ResultsTableViewController.swift
//  ChemistryQuiz
//
//  Created by Zach Phelps on 9/27/19.
//  Copyright © 2019 Zach Phelps. All rights reserved.
//

import UIKit

class ResultsTableViewCell: UITableViewCell {
    
    @IBOutlet var questionLabel: UILabel!
    
}

var questionIndex = 0

class ResultsTableViewController: UITableViewController {

    @IBOutlet var resultsTableView: UITableView! {
        didSet {
            resultsTableView.dataSource = self
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        resultsTableView.rowHeight = 65
       
    }
    
    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return missedQuestionsText.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "resultsCell", for: indexPath) as! ResultsTableViewCell

        cell.questionLabel?.text = missedQuestionsText[indexPath.row]

        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        questionIndex = indexPath.row
        
        print("selected")
        
        performSegue(withIdentifier: "expandedResultsSegue", sender: nil)
        
    }

}
