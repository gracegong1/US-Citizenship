//
//  ReviewQuestionViewController.swift
//  US Citizenship
//
//  Created by Grace Gong on 7/23/18.
//  Copyright © 2018 Grace Gong. All rights reserved.
//

import Foundation
import UIKit

class ReviewQuestionViewController: UIViewController {
    
    @IBOutlet weak var ReviewQLabel: UILabel!
    @IBOutlet var ReviewButtons: [UIButton]!
    @IBOutlet weak var QuestionNumOfNumLabel: UILabel!
    @IBOutlet weak var QuestionsProgressView: UIProgressView!
    
    
    @IBOutlet weak var ReviewButton1: UIButton!
    @IBOutlet weak var ReviewButton2: UIButton!
    @IBOutlet weak var ReviewButton3: UIButton!
    @IBOutlet weak var ReviewButton4: UIButton!
    @IBOutlet weak var ReviewNextButton: UIButton!
    
    var ReviewQuestions = [ReviewQuestion]()
    let questionsObject = USGov()
    var ReviewQNumber = Int()
    var ReviewCorrectAnswerNumbers = Int()
    var ReviewNumCorrect = Int()
   
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        ReviewQuestions = questionsObject.ReviewQList
            
        
        PickReviewQuestion()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        // Create a variable that you want to send
        
        // Create a new variable to store the instance of PlayerTableViewController
        let destinationVC = segue.destination as! ReviewResultsViewController
        destinationVC.ReviewNumCorrect = ReviewNumCorrect
    }

    func PickReviewQuestion() {
        if ReviewQuestions.count > 0 {
            ReviewQNumber = Int(arc4random_uniform(UInt32(ReviewQuestions.count)))
            
            ReviewQLabel.text = ReviewQuestions[ReviewQNumber].ReviewQuestion
            
            ReviewCorrectAnswerNumbers = ReviewQuestions[ReviewQNumber].ReviewCorrectAnswers
            
            for i in 0..<ReviewButtons.count {
                ReviewButtons[i].setTitle(ReviewQuestions[ReviewQNumber].ReviewPossibleAnswers[i], for: UIControlState.normal)
                ReviewButtons[i].backgroundColor = UIColor.white
                ReviewButtons[i].setTitleColor(UIColor.black, for: UIControlState.normal)
                ReviewButton1.isEnabled = true
                ReviewButton2.isEnabled = true
                ReviewButton3.isEnabled = true
                ReviewButton4.isEnabled = true
                ReviewNextButton.isEnabled = false
            }
            ReviewQuestions.remove(at: ReviewQNumber)
            let current = 32 - ReviewQuestions.count
            let max = 20
            
            if current <= max {
                let ratio = Float(current) / Float(max)
                QuestionsProgressView.progress = Float(ratio)
                QuestionNumOfNumLabel.text = "Question \(current) of 20"
            }
        } else {
            NSLog("Done!")
        }
       
    }
    
    @IBAction func ReviewBtn1(_ sender: Any) {
        
        if ReviewCorrectAnswerNumbers == 0 {
            self.ReviewButton1.backgroundColor = UIColor(red: 0.0/255.0, green: 153.0/255.0, blue: 0.0/255.0, alpha: 1.0)
            ReviewButton1.setTitleColor(UIColor.white, for: UIControlState.normal)
            ReviewNumCorrect += 1
    
        } else {
            NSLog("Wrong!")
            self.ReviewButton1.backgroundColor = UIColor(red: 204.0/255.0, green: 0.0/255.0, blue: 0.0/255.0, alpha: 1.0);
            ReviewButton1.setTitleColor(UIColor.white, for: UIControlState.normal)
        
        }
        ReviewButton2.isEnabled = false
        ReviewButton3.isEnabled = false
        ReviewButton4.isEnabled = false
        ReviewNextButton.isEnabled = true
    }
    
    
    @IBAction func ReviewBtn2(_ sender: Any) {
        if ReviewCorrectAnswerNumbers == 1 {
            self.ReviewButton2.backgroundColor = UIColor(red: 0.0/255.0, green: 153.0/255.0, blue: 0.0/255.0, alpha: 1.0)
            ReviewButton2.setTitleColor(UIColor.white, for: UIControlState.normal)
            ReviewNumCorrect += 1
        } else {
            NSLog("Wrong!")
            self.ReviewButton2.backgroundColor = UIColor(red: 204.0/255.0, green: 0.0/255.0, blue: 0.0/255.0, alpha: 1.0);
            ReviewButton2.setTitleColor(UIColor.white, for: UIControlState.normal)
        }
        ReviewButton1.isEnabled = false
        ReviewButton3.isEnabled = false
        ReviewButton4.isEnabled = false
        ReviewNextButton.isEnabled = true
    }
    
    
    @IBAction func ReviewBtn3(_ sender: Any) {
        if ReviewCorrectAnswerNumbers == 2 {
            self.ReviewButton3.backgroundColor = UIColor(red: 0.0/255.0, green: 153.0/255.0, blue: 0.0/255.0, alpha: 1.0)
            ReviewButton3.setTitleColor(UIColor.white, for: UIControlState.normal)
            ReviewNumCorrect += 1

        } else {
            NSLog("Wrong!")
           self.ReviewButton3.backgroundColor = UIColor(red: 204.0/255.0, green: 0.0/255.0, blue: 0.0/255.0, alpha: 1.0);
            ReviewButton3.setTitleColor(UIColor.white, for: UIControlState.normal)
        }
        
        
        ReviewButton1.isEnabled = false
        ReviewButton2.isEnabled = false
        ReviewButton4.isEnabled = false
        ReviewNextButton.isEnabled = true
    }
    
    
    @IBAction func ReviewBtn4(_ sender: Any) {
        if ReviewCorrectAnswerNumbers == 3 {
            self.ReviewButton4.backgroundColor = UIColor(red: 0.0/255.0, green: 153.0/255.0, blue: 0.0/255.0, alpha: 1.0)
            ReviewButton4.setTitleColor(UIColor.white, for: UIControlState.normal)
            ReviewNumCorrect += 1
        } else {
            NSLog("Wrong!")
            self.ReviewButton4.backgroundColor = UIColor(red: 204.0/255.0, green: 0.0/255.0, blue: 0.0/255.0, alpha: 1.0);
            ReviewButton4.setTitleColor(UIColor.white, for: UIControlState.normal)
        }
        
        ReviewButton1.isEnabled = false
        ReviewButton2.isEnabled = false
        ReviewButton3.isEnabled = false
        ReviewNextButton.isEnabled = true
    }
    @IBAction func ReviewNextBtn(_ sender: Any) {
        if ReviewQuestions.count < 13 {
            self; performSegue(withIdentifier: "displayReviewResults", sender: Any?.self)
        } else {
            PickReviewQuestion()
        }
    }
}
