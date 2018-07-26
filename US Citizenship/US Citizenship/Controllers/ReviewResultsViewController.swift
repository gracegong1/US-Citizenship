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
        reviewNumCorrectLabel.text = "You answered " + String(ReviewNumCorrect) + " out of 20 correct"
    }
}
