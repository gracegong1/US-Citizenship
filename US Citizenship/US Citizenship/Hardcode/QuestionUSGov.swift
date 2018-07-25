//
//  QuestionUSGov.swift
//  US Citizenship
//
//  Created by Grace Gong on 7/25/18.
//  Copyright © 2018 Grace Gong. All rights reserved.
//

import Foundation

class USGov {
    
    var list = [ReviewQuestion]()
    
    init() {
        
        [
        ReviewQuestion(ReviewQuestion: "What is the supreme law of the land?", ReviewPossibleAnswers: ["the Magna Carta", "the Constitution", "the Declaration of Independence", "the Treaty of Paris"], ReviewCorrectAnswers: 1),
        ReviewQuestion(ReviewQuestion: "What does the Constitution do?", ReviewPossibleAnswers: ["inventor of the airplane", "third president of the United States", "youngest member of the Constitutional Convention", "U.S. diplomat"], ReviewCorrectAnswers: 3),
        ReviewQuestion(ReviewQuestion: "The idea of self-government is in the first three words of the Constitution. What are these words?", ReviewPossibleAnswers: ["Congress shall make", "We the British", "We the People", "We the Colonists"], ReviewCorrectAnswers: 2),
        ReviewQuestion(ReviewQuestion: "What does the Constitution do?", ReviewPossibleAnswers: ["inventor of the airplane", "third president of the United States", "youngest member of the Constitutional Convention", "U.S. diplomat"], ReviewCorrectAnswers: 3),
//        ReviewQuestion(ReviewQuestion: "What is one responsibility that is only for United States citizens?", ReviewPossibleAnswers: ["serve on a jury", "pay taxes", "be respectful of others", "obey the law"], ReviewCorrectAnswers: 0),
//         ReviewQuestion(ReviewQuestion: "Name the U.S. war between the North and the South.", ReviewPossibleAnswers: ["The Civil War", "World War I", "the Revolutionary War", "The War of 1812"], ReviewCorrectAnswers: 0),
//         ReviewQuestion(ReviewQuestion: "What is one thing Benjamin Franklin is famous for?", ReviewPossibleAnswers: ["inventor of the airplane", "third president of the United States", "youngest member of the Constitutional Convention", "U.S. diplomat"], ReviewCorrectAnswers: 3),
         
         
        ].forEach { (question) in
            list.append(question)
        }
        
    }
}
