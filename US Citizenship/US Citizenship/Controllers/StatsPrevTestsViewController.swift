//
//  StatsPrevTestsViewController.swift
//  US Citizenship
//
//  Created by Grace Gong on 7/23/18.
//  Copyright © 2018 Grace Gong. All rights reserved.
//

import Foundation
import UIKit

class StatsReviewViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    var reviewResults = CoreDataHelper.retrieveReviewResults()
    
    @IBOutlet weak var statsReviewTableView: UITableView!
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return reviewResults.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "reviewResultsTableViewCell", for: indexPath) as! ReviewResultsTableViewCell

        let reviewResult = reviewResults[indexPath.row]
        cell.statsReviewPercentCorrectLabel.text = reviewResult.percentCorrect
        cell.statsReviewNumberCorrectLabel.text = reviewResult.numberCorrect
        
        return cell
    }
    
    
}
