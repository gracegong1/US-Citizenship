//
//  QuestionUSGov.swift
//  US Citizenship
//
//  Created by Grace Gong on 7/25/18.
//  Copyright © 2018 Grace Gong. All rights reserved.
//

import Foundation

class USGov {
    
    var ReviewQList = [ReviewQuestion]()
    
    init() {
        
        [
        ReviewQuestion(ReviewQuestion: "What is the supreme law of the land?", ReviewPossibleAnswers: ["the Magna Carta", "the Constitution", "the Declaration of Independence", "the Treaty of Paris"], ReviewCorrectAnswers: 1),
        ReviewQuestion(ReviewQuestion: "What does the Constitution do?", ReviewPossibleAnswers: ["defines the government", "overrides the Declaration of Independence", "states the Supreme Court's abilities", "protects the president"], ReviewCorrectAnswers: 0),
        ReviewQuestion(ReviewQuestion: "The idea of self-government is in the first three words of the Constitution. What are these words?", ReviewPossibleAnswers: ["Congress shall make", "We the British", "We the People", "We the Colonists"], ReviewCorrectAnswers: 2),
        ReviewQuestion(ReviewQuestion: "What is an amendment?", ReviewPossibleAnswers: ["a punishment for Supreme Court judges", "a correction to the Declaration of Independence", "a change to the consitution", "a formal removal of rights from people"], ReviewCorrectAnswers: 2),
        ReviewQuestion(ReviewQuestion: "What do we call the first ten amendments to the Constitution?", ReviewPossibleAnswers: ["the Bill of Liberties", "the Ten Commandments", "the Ten", "the Bill of Rights"], ReviewCorrectAnswers: 3),
        //5
        ReviewQuestion(ReviewQuestion: "What is one right or freedom from the First Amendment?", ReviewPossibleAnswers: ["assembly", "beauty", "luxury", "simplicity"], ReviewCorrectAnswers: 0),
        ReviewQuestion(ReviewQuestion: "How many amendments does the constitution have?", ReviewPossibleAnswers: ["10", "20", "22", "27"], ReviewCorrectAnswers: 3),
        ReviewQuestion(ReviewQuestion: "What did the Declaration of Independence do?", ReviewPossibleAnswers: ["declared that Great Britain was our mother country", "said that the United States is free from Great Britain", "announced the inauguration of George Washington", "stated the people's rights"], ReviewCorrectAnswers: 1),
        ReviewQuestion(ReviewQuestion: "What are two rights in the Declaration of Independence", ReviewPossibleAnswers: ["life and luxury", "life and liberty", "money and the pursuit of happiness", "opportunity and occupation"], ReviewCorrectAnswers: 1),
        ReviewQuestion(ReviewQuestion: "What is freedom of religion?", ReviewPossibleAnswers: ["one must practice a religious of choice", "one must not practice religion", "one must practice a specific religion", "one can practice any religion, or not practice a religion"], ReviewCorrectAnswers: 3),
        //10
        ReviewQuestion(ReviewQuestion: "What is the economic system in the United States?", ReviewPossibleAnswers: ["capitalist economy", "mixed economy", "pure command economy", "traditional economy"], ReviewCorrectAnswers: 0),
        ReviewQuestion(ReviewQuestion: "What is the 'rule of law'?", ReviewPossibleAnswers: ["citizens must obey the law", "everyone must obey the law", "landowners must obey the law", "the wealthy must obey the law"], ReviewCorrectAnswers: 1),
        ReviewQuestion(ReviewQuestion: "Name one branch or part of the government.", ReviewPossibleAnswers: ["Congress", "the citizens", "the Constitution", "the Thirteen original colonies"], ReviewCorrectAnswers: 0),
        ReviewQuestion(ReviewQuestion: "What stops one branch of government from becoming too powerful?", ReviewPossibleAnswers: ["Great Britain's parliament", "the citizen's powers", "checks and balances", "starts and stops"], ReviewCorrectAnswers: 2),
        ReviewQuestion(ReviewQuestion: "Who is in charge of the executive branch?", ReviewPossibleAnswers: ["the Speaker of the House", "the Secretary of State", "the President", "the head judge"], ReviewCorrectAnswers: 2),
        //15
        ReviewQuestion(ReviewQuestion: "Who makes federal laws?", ReviewPossibleAnswers: ["the President", "Congress", "the Vice President", "the citizens"], ReviewCorrectAnswers: 1),
        ReviewQuestion(ReviewQuestion: "What are the two parts of the U.S. Congress?", ReviewPossibleAnswers: ["the President and the Vice President", "the Secretary of State and the Supreme Court judge", "the citizens and their counterparts", "Senate and House of Representatives"], ReviewCorrectAnswers: 3),
        ReviewQuestion(ReviewQuestion: "How many U.S. Senators are there?", ReviewPossibleAnswers: ["20", "25", "50", "100"], ReviewCorrectAnswers: 3),
        ReviewQuestion(ReviewQuestion: "We elect a U.S. Senator for how many years?", ReviewPossibleAnswers: ["1", "2", "6", "10"], ReviewCorrectAnswers: 2),
        ReviewQuestion(ReviewQuestion: "Who is one of your state's U.S. Senators now?", ReviewPossibleAnswers: ["Elizabeth Warren", "", "", ""], ReviewCorrectAnswers: 0),
        //20
        ReviewQuestion(ReviewQuestion: "The House of Representatives has how many voting members?", ReviewPossibleAnswers: ["50", "235", "355", "435"], ReviewCorrectAnswers: 3),
        ReviewQuestion(ReviewQuestion: "", ReviewPossibleAnswers: ["", "", "", ""], ReviewCorrectAnswers: 0),
        
        
//        ReviewQuestion(ReviewQuestion: "What is one responsibility that is only for United States citizens?", ReviewPossibleAnswers: ["serve on a jury", "pay taxes", "be respectful of others", "obey the law"], ReviewCorrectAnswers: 0),
//         ReviewQuestion(ReviewQuestion: "Name the U.S. war between the North and the South.", ReviewPossibleAnswers: ["The Civil War", "World War I", "the Revolutionary War", "The War of 1812"], ReviewCorrectAnswers: 0),
//         ReviewQuestion(ReviewQuestion: "What is one thing Benjamin Franklin is famous for?", ReviewPossibleAnswers: ["inventor of the airplane", "third president of the United States", "youngest member of the Constitutional Convention", "U.S. diplomat"], ReviewCorrectAnswers: 3),
         
         
        ].forEach { (question) in
            ReviewQList.append(question)
        }
        
    }
}
