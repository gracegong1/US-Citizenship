//
//  StatsMainViewController.swift
//  US Citizenship
//
//  Created by Grace Gong on 7/23/18.
//  Copyright © 2018 Grace Gong. All rights reserved.
//

import Foundation
import UIKit

class StatsMainViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    var testResults = CoreDataHelper.retrieveTestResults()
    
    @IBOutlet weak var testResultsTableView: UITableView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        testResults = CoreDataHelper.retrieveTestResults()
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return testResults.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "testResultsTableViewCell", for: indexPath) as! TestResultsTableViewCell
        let testResult = testResults[indexPath.row]
        cell.statsTestPercentCorrectLabel.text = testResult.percentCorrect
        cell.statsTestNumCorrectLabel.text = testResult.numberCorrect
        
        return cell
        }
    }

