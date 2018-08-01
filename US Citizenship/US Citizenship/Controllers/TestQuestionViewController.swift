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
    
    
    
    
    
    
    var testQuestions = [Question]()
    let questionsObject = USGov()
    var testQNumber = Int()
    var testCorrectAnswer = [String]()
    var testWrongAnswer = [String]()
    var wrongAnswerChoice = Int()
    var correctAnswerChoice = Int()
    var correctAnswerButtonIndex = Int()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        testQuestions = questionsObject.ReviewQList
    }
    
    //insert override func prepare for segue to test results
    
    func PickTestQuestion() {
        
    }
}

