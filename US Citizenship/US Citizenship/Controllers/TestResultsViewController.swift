//
//  TestResultsViewController.swift
//  US Citizenship
//
//  Created by Grace Gong on 7/23/18.
//  Copyright © 2018 Grace Gong. All rights reserved.
//

import Foundation
import UIKit

class TestResultsViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet weak var testPercentCorrectLabel: UILabel!
    
    @IBOutlet weak var testNumberCorrectLabel: UILabel!
    
    var results = [TestResult]()
    var testNumCorrect = Int()
    
    var testResult: TestResult?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        testPercentCorrectLabel.text = String(Float(Double(testNumCorrect) / 10.0 * 100)) + "%"
//        reviewPercentCorrectProgressView.progress = Float(Double(ReviewNumCorrect) / 20.0)
        testNumberCorrectLabel.text = "You answered " + String(testNumCorrect) + " out of 10 correct"
        
        testResult =  CoreDataHelper.newTestResult()
        testResult?.percentCorrect = testPercentCorrectLabel.text
        testResult?.numberCorrect = String(testNumCorrect)
        
        
        
        CoreDataHelper.save()
        
        print(testResult?.percentCorrect)
        print(testResult?.numberCorrect)
        
        results = CoreDataHelper.retrieveTestResults()
        print(results.count)
        
    }

    var testResults = TestResults()
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
            return 10
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ListTestQTableViewCell", for: indexPath) as! ListTestQTableViewCell
        let questionsAnswered = testResults.questionsAnswered[indexPath.row]
        
        let chosenAnswers = testResults.answersSubmitted[indexPath.row]
        let correctanswers = testResults.possibleCorrectAnswers[indexPath.row]
        cell.TestQuestionLabel.text = questionsAnswered
        cell.TestAnswerInputLabel.text = chosenAnswers
        cell.TestCorrectAnswerLabel.text = correctanswers
        
        return cell
    }
}

