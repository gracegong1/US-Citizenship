//
//  TestQuestionViewController.swift
//  US Citizenship
//
//  Created by Grace Gong on 7/23/18.
//  Copyright © 2018 Grace Gong. All rights reserved.
//

import Foundation
import UIKit

class TestQuestionViewController: UIViewController {
    
    @IBOutlet weak var TestQuestionNumOfNumLabel: UILabel!
    @IBOutlet weak var TestQuestionsProgressView: UIProgressView!
    @IBOutlet weak var TestQLabel: UILabel!
    @IBOutlet weak var TestAnswerTextField: UITextField!
    @IBOutlet weak var TestNextButton: UIButton!
    @IBOutlet weak var checkmarkLabel: UILabel!
    
    
    var testQuestions = [Question]()
    let questionsObject = USGov()
    var testQNumber = Int()
    var testCorrectAnswer = [String]()
    var testNumCorrect = Int()
    
    var testResults = TestResults()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        testQuestions = questionsObject.ReviewQList
        PickTestQuestion()
        self.hideKeyboardWhenTappedAround()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        // Create a variable that you want to send
        
        // Create a new variable to store the instance of PlayerTableViewController
        
        let destinationVC3 = segue.destination as! TestResultsViewController
        destinationVC3.testResults = testResults
        
        let destinationVC4 = segue.destination as! TestResultsViewController
        destinationVC4.testNumCorrect = testNumCorrect
    }
    
    func PickTestQuestion() {
        
        if testQuestions.count > 0 {
            //gets a question
            testQNumber = Int(arc4random_uniform(UInt32(testQuestions.count)))
            TestQLabel.text = testQuestions[testQNumber].Question
            
            //gets the correct answers
            testCorrectAnswer = testQuestions[testQNumber].CorrectAnswers
            
        
        }
        TestNextButton.isEnabled = false
        checkmarkLabel.textColor = UIColor.white
        TestAnswerTextField.text = ""
        TestAnswerTextField.textColor = UIColor.black
        
        testQuestions.remove(at: testQNumber)
        let current = 100 - testQuestions.count
        let max = 10
        
        if current <= max {
            let ratio = Float(current) / Float(max)
            TestQuestionsProgressView.progress = Float(ratio)
            TestQuestionNumOfNumLabel.text = "Question \(current) of 10"
        }
        testResults.questionsAnswered.append(testQuestions[testQNumber].Question)
    }
    
    
    @IBAction func TestNextBtn(_ sender: Any) {
        guard let typedAnswer = TestAnswerTextField.text else { return }
          let correctAnswersAsString = testQuestions[testQNumber].CorrectAnswers.joined(separator: ", ")
        if testQuestions.count > 90 {
           
            if testCorrectAnswer.contains(where: {$0.caseInsensitiveCompare(typedAnswer) == .orderedSame}){
                checkmarkLabel.text = "✓"
                checkmarkLabel.textColor = UIColor(red: 0.0/255.0, green: 153.0/255.0, blue: 0.0/255.0, alpha: 1.0)
                TestAnswerTextField.textColor = UIColor(red: 0.0/255.0, green: 153.0/255.0, blue: 0.0/255.0, alpha: 1.0)
                
                testNumCorrect += 1
                testResults.rightOrWrong.append(true)
                
                DispatchQueue.main.asyncAfter(deadline: .now() + 0.3) {
                    self.PickTestQuestion()
                    
                }
            } else {
                    checkmarkLabel.text = "X"
                    checkmarkLabel.textColor = UIColor(red: 204.0/255.0, green: 0.0/255.0, blue: 0.0/255.0, alpha: 1.0)
                    TestAnswerTextField.textColor = UIColor(red: 204.0/255.0, green: 0.0/255.0, blue: 0.0/255.0, alpha: 1.0)
                
                    testResults.rightOrWrong.append(false)
                
                    DispatchQueue.main.asyncAfter(deadline: .now() + 0.3) {
                        self.PickTestQuestion()
                    }
                }
        testResults.answersSubmitted.append(typedAnswer)
        testResults.possibleCorrectAnswers.append(correctAnswersAsString)
        } else {
          
            testResults.answersSubmitted.append(typedAnswer)
            testResults.possibleCorrectAnswers.append(correctAnswersAsString)
            self; performSegue(withIdentifier: "displayTestResults", sender: Any?.self)
        }
    }
}

extension TestQuestionViewController {
    func hideKeyboardWhenTappedAround() {
        let tap: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(TestQuestionViewController.dismissKeyboard))
        tap.cancelsTouchesInView = false
        view.addGestureRecognizer(tap)
    }
    
    @objc func dismissKeyboard() {
        view.endEditing(true)
        
        if TestAnswerTextField.text != "" {
            TestNextButton.isEnabled = true
        }
    }
}

