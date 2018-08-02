//
//  AnsweredQuestionModel.swift
//  US Citizenship
//
//  Created by Grace Gong on 8/1/18.
//  Copyright © 2018 Grace Gong. All rights reserved.
//

import Foundation

struct Results {
    var questionsAnswered : [String]
    var chosenAnswers : [String]
    var correctAnswers : [String]
    var rightOrWrong : [Bool]
    
    init () {
        self.questionsAnswered = [String]()
        self.chosenAnswers = [String]()
        self.correctAnswers = [String]()
        self.rightOrWrong = [Bool]()
    }
}
