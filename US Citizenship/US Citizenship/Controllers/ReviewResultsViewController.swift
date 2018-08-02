//
//  ReviewResultsViewController.swift
//  US Citizenship
//
//  Created by Grace Gong on 7/23/18.
//  Copyright © 2018 Grace Gong. All rights reserved.
//

import Foundation
import UIKit

class ReviewResultsViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet weak var answeredQTableView: UITableView!
    
    @IBOutlet weak var reviewPercentCorrectLabel: UILabel!
    
    @IBOutlet weak var reviewPercentCorrectProgressView: UIProgressView!
    
    @IBOutlet weak var reviewNumCorrectLabel: UILabel!
    
    var reviewResult : ReviewResult?
    var results2 = [ReviewResult]()
    
    var ReviewNumCorrect = Int()
    override func viewDidLoad() {
        reviewPercentCorrectLabel.text = String(Float(Double(ReviewNumCorrect) / 15.0 * 100)) + "%"
        reviewPercentCorrectProgressView.progress = Float(Double(ReviewNumCorrect) / 15.0)
        reviewNumCorrectLabel.text = "You answered " + String(ReviewNumCorrect) + " out of 15 correct"
        
       reviewResult = CoreDataHelper.newReviewResult()
        reviewResult?.percentCorrect = reviewPercentCorrectLabel.text
        reviewResult?.numberCorrect = String(ReviewNumCorrect) + "/15"
        
        CoreDataHelper.save()
        
        results2 = CoreDataHelper.retrieveReviewResults()
    }
    
    var results = Results()
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return 15
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "listAnsweredQTableViewCell", for: indexPath) as! ListReviewQTableViewCell
        let questionsAnswered = results.questionsAnswered[indexPath.row]
        let chosenAnswers = results.chosenAnswers[indexPath.row]
        let correctanswers = results.correctAnswers[indexPath.row]
        
        cell.answeredQLabel.text = questionsAnswered
        cell.correctAnswerLabel.text = correctanswers
        cell.chosenAnswerLabel.text = chosenAnswers
        
        if results.rightOrWrong[indexPath.row] == false {
            
            cell.correctAnswerLabel.textColor = UIColor(red: 0.0/255.0, green: 153.0/255.0, blue: 0.0/255.0, alpha: 1.0)
            cell.chosenAnswerLabel.textColor = UIColor(red: 204.0/255.0, green: 0.0/255.0, blue: 0.0/255.0, alpha: 1.0)
            
        } else {

            cell.correctAnswerLabel.textColor = UIColor(red: 0.0/255.0, green: 153.0/255.0, blue: 0.0/255.0, alpha: 1.0)
            cell.chosenAnswerLabel.text = ""
            cell.chosenAnswerLabel.textColor = UIColor.white
        }
        return cell
    }

    
}
