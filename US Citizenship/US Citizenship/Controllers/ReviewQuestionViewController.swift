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
    
    var ReviewQuestions = [Question]()
    let questionsObject = USGov()
    var ReviewQNumber = Int()
    var ReviewCorrectAnswer = [String]()
    var ReviewWrongAnswer = [String]()
    var ReviewNumCorrect = Int()
    var choiceOfWrong = Int()
    var choiceOfCorrect = Int()
    var correctAnswerButtonIndex = Int()
   
    var results = Results()
    
    
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
        
        let destinationVC2 = segue.destination as! ReviewResultsViewController
        destinationVC2.results = results
    }

    func PickReviewQuestion() {
        if ReviewQuestions.count > 0 {
            // gets a question
            ReviewQNumber = Int(arc4random_uniform(UInt32(ReviewQuestions.count)))
            ReviewQLabel.text = ReviewQuestions[ReviewQNumber].Question
            
            // gets the correct and incorrect answers
            ReviewCorrectAnswer = ReviewQuestions[ReviewQNumber].CorrectAnswers
            ReviewWrongAnswer = ReviewQuestions[ReviewQNumber].WrongAnswers
            
            // chooses which number button will be correct
            correctAnswerButtonIndex = Int(arc4random_uniform(UInt32(ReviewButtons.count)))
            
            // chooses which correct answer to display
            choiceOfCorrect = Int(arc4random_uniform(UInt32(ReviewCorrectAnswer.count)))
            results.correctAnswers.append(ReviewCorrectAnswer[choiceOfCorrect])
        
            // sets the correct answer button with the answer
            ReviewButtons[correctAnswerButtonIndex].setTitle(ReviewCorrectAnswer[choiceOfCorrect], for: UIControlState.normal)
            
            for i in 0..<ReviewButtons.count {
                if i != correctAnswerButtonIndex {
                    choiceOfWrong = Int(arc4random_uniform(UInt32(ReviewWrongAnswer.count)))
                    ReviewButtons[i].setTitle(ReviewWrongAnswer[choiceOfWrong], for: UIControlState.normal)
                    ReviewWrongAnswer.remove(at: choiceOfWrong)
                }
                
                ReviewButtons[i].backgroundColor = UIColor.white
                ReviewButtons[i].setTitleColor(UIColor.black, for: UIControlState.normal)
                ReviewButtons[i].isEnabled = true
                ReviewNextButton.isEnabled = false
            }
            results.questionsAnswered.append(ReviewQuestions[ReviewQNumber].Question)
            
            ReviewQuestions.remove(at: ReviewQNumber)
            let current = 100 - ReviewQuestions.count
            let max = 20
            
            if current <= max {
                let ratio = Float(current) / Float(max)
                QuestionsProgressView.progress = Float(ratio)
                QuestionNumOfNumLabel.text = "Question \(current) of 20"
            }
        }
    }
    
   
    
    
    @IBAction func ReviewBtn1(_ sender: Any) {
     guard let chosenAnswer = ReviewButton1.title(for: .normal) else {
        return
        }
        if ReviewCorrectAnswer.contains(chosenAnswer) {
            self.ReviewButton1.backgroundColor = UIColor(red: 0.0/255.0, green: 153.0/255.0, blue: 0.0/255.0, alpha: 1.0)
            ReviewButton1.setTitleColor(UIColor.white, for: UIControlState.normal)
            ReviewNumCorrect += 1
            results.rightOrWrong.append(true)
        }
        else {

            self.ReviewButton1.backgroundColor = UIColor(red: 204.0/255.0, green: 0.0/255.0, blue: 0.0/255.0, alpha: 1.0);
            ReviewButton1.setTitleColor(UIColor.white, for: UIControlState.normal)
            results.rightOrWrong.append(false)
        }
        ReviewButton2.isEnabled = false
        ReviewButton3.isEnabled = false
        ReviewButton4.isEnabled = false
        ReviewNextButton.isEnabled = true
        
        results.chosenAnswers.append(chosenAnswer)
    }

    
    @IBAction func ReviewBtn2(_ sender: Any) {
        guard let chosenAnswer = ReviewButton2.title(for: .normal) else {
            print("I am escaping!")
            return
        }
        if ReviewCorrectAnswer.contains(chosenAnswer) {
            self.ReviewButton2.backgroundColor = UIColor(red: 0.0/255.0, green: 153.0/255.0, blue: 0.0/255.0, alpha: 1.0)
            ReviewButton2.setTitleColor(UIColor.white, for: UIControlState.normal)
            ReviewNumCorrect += 1
            results.rightOrWrong.append(true)
        }
        else {
            self.ReviewButton2.backgroundColor = UIColor(red: 204.0/255.0, green: 0.0/255.0, blue: 0.0/255.0, alpha: 1.0);
            ReviewButton2.setTitleColor(UIColor.white, for: UIControlState.normal)
            results.rightOrWrong.append(false)
        }
        ReviewButton1.isEnabled = false
        ReviewButton3.isEnabled = false
        ReviewButton4.isEnabled = false
        ReviewNextButton.isEnabled = true
        
        results.chosenAnswers.append(chosenAnswer)
    }
    
    
    @IBAction func ReviewBtn3(_ sender: Any) {
        guard let chosenAnswer = ReviewButton3.title(for: .normal) else {
            print("I am escaping!")
            return
        }
        if ReviewCorrectAnswer.contains(chosenAnswer) {
            self.ReviewButton3.backgroundColor = UIColor(red: 0.0/255.0, green: 153.0/255.0, blue: 0.0/255.0, alpha: 1.0)
            ReviewButton3.setTitleColor(UIColor.white, for: UIControlState.normal)
            ReviewNumCorrect += 1
            results.rightOrWrong.append(true)
        }
        else {
           self.ReviewButton3.backgroundColor = UIColor(red: 204.0/255.0, green: 0.0/255.0, blue: 0.0/255.0, alpha: 1.0);
            ReviewButton3.setTitleColor(UIColor.white, for: UIControlState.normal)
            results.rightOrWrong.append(false)
        }
        
        
        ReviewButton1.isEnabled = false
        ReviewButton2.isEnabled = false
        ReviewButton4.isEnabled = false
        ReviewNextButton.isEnabled = true
        
         results.chosenAnswers.append(chosenAnswer)
    }
    
    
    @IBAction func ReviewBtn4(_ sender: Any) {
        guard let chosenAnswer = ReviewButton4.title(for: .normal) else {
            print("I am escaping!")
            return
        }
        if ReviewCorrectAnswer.contains(chosenAnswer) {
            self.ReviewButton4.backgroundColor = UIColor(red: 0.0/255.0, green: 153.0/255.0, blue: 0.0/255.0, alpha: 1.0)
            ReviewButton4.setTitleColor(UIColor.white, for: UIControlState.normal)
            ReviewNumCorrect += 1
            results.rightOrWrong.append(true)
        }
        else {

            self.ReviewButton4.backgroundColor = UIColor(red: 204.0/255.0, green: 0.0/255.0, blue: 0.0/255.0, alpha: 1.0);
            ReviewButton4.setTitleColor(UIColor.white, for: UIControlState.normal)
            results.rightOrWrong.append(false)
        }
        
        ReviewButton1.isEnabled = false
        ReviewButton2.isEnabled = false
        ReviewButton3.isEnabled = false
        ReviewNextButton.isEnabled = true
        
         results.chosenAnswers.append(chosenAnswer)
    }
    
    @IBAction func ReviewNextBtn(_ sender: Any) {
        if ReviewQuestions.count <= 80 {
            self; performSegue(withIdentifier: "displayReviewResults", sender: Any?.self)
        } else {
            PickReviewQuestion()
        }
    }
}
