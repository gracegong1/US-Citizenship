//
//  ReviewResultsViewController.swift
//  US Citizenship
//
//  Created by Grace Gong on 7/23/18.
//  Copyright © 2018 Grace Gong. All rights reserved.
//

import Foundation
import UIKit

class ReviewResultsViewController: UIViewController {
    @IBOutlet weak var reviewPercentCorrectLabel: UILabel!
    
    @IBOutlet weak var reviewPercentCorrectProgressView: UIProgressView!
    
    @IBOutlet weak var reviewNumCorrectLabel: UILabel!
    
    var ReviewNumCorrect = Int()
    override func viewDidLoad() {
        reviewPercentCorrectLabel.text = String(Float(Double(ReviewNumCorrect) / 20.0 * 100)) + "%"
        reviewPercentCorrectProgressView.progress = Float(Double(ReviewNumCorrect) / 20.0)
        reviewNumCorrectLabel.text = "You answered " + String(ReviewNumCorrect) + " out of 20 correct"
        
    }
}
