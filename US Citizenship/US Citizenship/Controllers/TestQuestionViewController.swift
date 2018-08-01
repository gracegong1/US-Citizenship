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
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        testQuestions = questionsObject.ReviewQList
        PickTestQuestion()
        self.hideKeyboardWhenTappedAround()
    }
    
    //insert override func prepare for segue to test results
    
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
        
    }
    
    
    @IBAction func TestNextBtn(_ sender: Any) {
        guard let typedAnswer = TestAnswerTextField.text else { return }
        if testQuestions.count <= 90 {
            self; performSegue(withIdentifier: "displayTestResults", sender: Any?.self)
        } else if testCorrectAnswer.contains(where: {$0.caseInsensitiveCompare(typedAnswer) == .orderedSame}){
            checkmarkLabel.text = "✓"
            checkmarkLabel.textColor = UIColor(red: 0.0/255.0, green: 153.0/255.0, blue: 0.0/255.0, alpha: 1.0)
            TestAnswerTextField.textColor = UIColor(red: 0.0/255.0, green: 153.0/255.0, blue: 0.0/255.0, alpha: 1.0)
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.3) {
                self.PickTestQuestion()
            }
        } else {
            checkmarkLabel.text = "X"
            checkmarkLabel.textColor = UIColor(red: 204.0/255.0, green: 0.0/255.0, blue: 0.0/255.0, alpha: 1.0)
            TestAnswerTextField.textColor = UIColor(red: 204.0/255.0, green: 0.0/255.0, blue: 0.0/255.0, alpha: 1.0)
            DispatchQueue.main.asyncAfter(deadline: .now() + 0.3) {
                self.PickTestQuestion()
            }
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

