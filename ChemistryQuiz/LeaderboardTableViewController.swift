//
//  LeaderboardTableViewController.swift
//  ChemistryQuiz
//
//  Created by Zach Phelps on 9/30/19.
//  Copyright © 2019 Zach Phelps. All rights reserved.
//

import UIKit

class LeaderboardTableViewCell: UITableViewCell {
    
    @IBOutlet var rankLabel: UILabel!
    @IBOutlet var userLabel: UILabel!
    @IBOutlet var numPointsLabel: UILabel!
    
}

class User {
    var userName = ""
    var userScore = 0
    
}

var leaderboard = [String]()

class LeaderboardTableViewController: UITableViewController {


    var rankArray = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
    
    @IBOutlet var leaderboardTableView: UITableView! {
        didSet {
            leaderboardTableView.dataSource = self
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        sortLeaderboard()
        
        leaderboardTableView.rowHeight = 55
        
    }
    
    func sortLeaderboard() {
        if(leaderboard.count == userScores.count) {
            for i in stride(from: userScores.count-1, to: 0, by: -1) {
                for j in 1...i {
                    if userScores[j-1] < userScores[j] {
                        let tmp = userScores[j-1]
                        let tmp2 = leaderboard[j-1]
                        userScores[j-1] = userScores[j]
                        leaderboard[j-1] = leaderboard[j]
                        userScores[j] = tmp
                        leaderboard[j] = tmp2
                    }
                }
            }
        }
        else {
            print("error")
        }
        print(userScores)
        print(leaderboard)
    }
    
    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return leaderboard.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "leaderboardCell", for: indexPath) as! LeaderboardTableViewCell

        if (leaderboard.count > 0) {
                        
            cell.userLabel?.text = leaderboard[indexPath.row]
            
            cell.numPointsLabel?.text = String(userScores[indexPath.row])
            
            cell.rankLabel?.text = String(rankArray[indexPath.row])
            
            return cell
            
        }
        
        return cell
    }
    

   

}
