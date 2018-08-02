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
    
    var ReviewNumCorrect = Int()
    override func viewDidLoad() {
        reviewPercentCorrectLabel.text = String(Float(Double(ReviewNumCorrect) / 20.0 * 100)) + "%"
        reviewPercentCorrectProgressView.progress = Float(Double(ReviewNumCorrect) / 20.0)
        reviewNumCorrectLabel.text = "You answered " + String(ReviewNumCorrect) + " out of 20 correct"
        
    }
    
    var results = Results()
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return 20
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "listAnsweredQTableViewCell", for: indexPath) as! ListReviewQTableViewCell
        let questionsAnswered = results.questionsAnswered[indexPath.row].joined(separator: ", ")
        
        cell.answeredQLabel.text = 
        cell.answerPickedLabel.text = "your answer choice"
        cell.correctAnswerLabel.text = "correct answer choice"
        
        return cell
    }

    
}
