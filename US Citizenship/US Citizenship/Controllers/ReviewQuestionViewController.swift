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
    
    
    @IBOutlet weak var ReviewButton1: UIButton!
    @IBOutlet weak var ReviewButton2: UIButton!
    @IBOutlet weak var ReviewButton3: UIButton!
    @IBOutlet weak var ReviewButton4: UIButton!
    
    var ReviewQuestions = [ReviewQuestion]()
    var ReviewQNumber = Int()
    var ReviewCorrectAnswerNumbers = Int()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        ReviewQuestions =
            [ReviewQuestion(ReviewQuestion: "What is one responsibility that is only for United States citizens?", ReviewPossibleAnswers: ["serve on a jury", "pay taxes", "be respectful of others", "obey the law"], ReviewCorrectAnswers: 0),
             ReviewQuestion(ReviewQuestion: "Name is U.S. war between the North and the South?", ReviewPossibleAnswers: ["The Civil War", "World War I", "the Revolutionary War", "The War of 1812"], ReviewCorrectAnswers: 0),
             ReviewQuestion(ReviewQuestion: "The idea of self-government is in the first three words of the Constitution. What are these words?", ReviewPossibleAnswers: ["Congress shall make", "We the British", "We the People", "We the Colonists"], ReviewCorrectAnswers: 2),
             ReviewQuestion(ReviewQuestion: "What is one thing Benjamin Franklin is famous for?", ReviewPossibleAnswers: ["inventor of the airplane", "third president of the United States", "youngest member of the Constitutional Convention", "U.S. diplomat"], ReviewCorrectAnswers: 3),]
        
        PickReviewQuestion()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    func PickReviewQuestion() {
        if ReviewQuestions.count > 0 {
            ReviewQNumber = 0
            ReviewQLabel.text = ReviewQuestions[ReviewQNumber].ReviewQuestion
            
            ReviewCorrectAnswerNumbers = ReviewQuestions[ReviewQNumber].ReviewCorrectAnswers
            
            for i in 0..<ReviewButtons.count {
                ReviewButtons[i].setTitle(ReviewQuestions[ReviewQNumber].ReviewPossibleAnswers[i], for: UIControlState.normal)
                ReviewButtons[i].backgroundColor = UIColor.white
                ReviewButtons[i].setTitleColor(UIColor.black, for: UIControlState.normal)
            }
            ReviewQuestions.remove(at: ReviewQNumber)
        } else {
            NSLog("Done!")
        }
    }
    
    @IBAction func ReviewBtn1(_ sender: Any) {
        
        if ReviewCorrectAnswerNumbers == 0 {
            ReviewButton1.backgroundColor = UIColor.green
            ReviewButton1.setTitleColor(UIColor.white, for: UIControlState.normal)
        } else {
            NSLog("Wrong!")
        }
    }
    @IBAction func ReviewBtn2(_ sender: Any) {
        if ReviewCorrectAnswerNumbers == 1 {
            ReviewButton2.backgroundColor = UIColor.green
            ReviewButton2.setTitleColor(UIColor.white, for: UIControlState.normal)
        } else {
            NSLog("Wrong!")
        }
    }
    @IBAction func ReviewBtn3(_ sender: Any) {
        if ReviewCorrectAnswerNumbers == 2 {
            ReviewButton3.backgroundColor = UIColor.green
            ReviewButton3.setTitleColor(UIColor.white, for: UIControlState.normal)
        } else {
            NSLog("Wrong!")
        }
    }
    @IBAction func ReviewBtn4(_ sender: Any) {
        if ReviewCorrectAnswerNumbers == 3 {
            ReviewButton4.backgroundColor = UIColor.green
            ReviewButton4.setTitleColor(UIColor.white, for: UIControlState.normal)
        } else {
            NSLog("Wrong!")
        }
    }
    @IBAction func ReviewNextBtn(_ sender: Any) {
        if ReviewQuestions.count == 0 {
            self; performSegue(withIdentifier: "displayReviewResults", sender: Any?.self)
        } else {
            PickReviewQuestion()
        }
    }
}
