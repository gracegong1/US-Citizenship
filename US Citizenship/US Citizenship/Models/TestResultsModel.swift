//
//  TestResultsModel.swift
//  US Citizenship
//
//  Created by Grace Gong on 8/1/18.
//  Copyright © 2018 Grace Gong. All rights reserved.
//

import Foundation

struct TestResults {
    var questionsAnswered : [String]
    var answersSubmitted : [String]
    var possibleCorrectAnswers : [String]
    var rightOrWrong : [Bool]
    
    init () {
        self.questionsAnswered = [String]()
        self.answersSubmitted = [String]()
        self.possibleCorrectAnswers = [String]()
        self.rightOrWrong = [Bool]()
    }
}
