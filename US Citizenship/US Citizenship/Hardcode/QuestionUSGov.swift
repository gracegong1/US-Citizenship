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
        ReviewQuestion(ReviewQuestion: "What is the supreme law of the land?", ReviewWrongAnswers: ["the Magna Carta", "the Constitution", "the Declaration of Independence", "the Treaty of Paris"], ReviewCorrectAnswers: ["the Constitution"]),
        //here
        ReviewQuestion(ReviewQuestion: "What does the Constitution do?", ReviewWrongAnswers: ["overrides the Declaration of Independence", "states the Supreme Court's abilities", "protects the president"], ReviewCorrectAnswers: ["defines the government", "sets up the government", "protects the basic rights of Americans"]),
        ReviewQuestion(ReviewQuestion: "The idea of self-government is in the first three words of the Constitution. What are these words?", ReviewWrongAnswers: ["Congress shall make", "We the British", "We the Colonists"], ReviewCorrectAnswers: ["We the People"]),
        //here
        ReviewQuestion(ReviewQuestion: "What is an amendment?", ReviewWrongAnswers: ["a punishment for Supreme Court judges", "a correction to the Declaration of Independence", "a formal removal of rights from people"], ReviewCorrectAnswers: ["a change to the constiution", "an addition to the constitution"]),
        ReviewQuestion(ReviewQuestion: "What do we call the first ten amendments to the Constitution?", ReviewWrongAnswers: ["the Bill of Liberties", "the Ten Commandments", "the Ten"], ReviewCorrectAnswers: ["the Bill of Rights"]),
        //5
            //here
        ReviewQuestion(ReviewQuestion: "What is one right or freedom from the First Amendment?", ReviewWrongAnswers: ["beauty", "luxury", "simplicity"], ReviewCorrectAnswers: ["assembly", "religion", "speech", "press", "petition the government"]),
        ReviewQuestion(ReviewQuestion: "How many amendments does the constitution have?", ReviewWrongAnswers: ["10", "20", "22"], ReviewCorrectAnswers: ["27"]),
        //here
        ReviewQuestion(ReviewQuestion: "What did the Declaration of Independence do?", ReviewWrongAnswers: ["declared that Great Britain was our mother country", "announced the inauguration of George Washington", "stated the people's rights"], ReviewCorrectAnswers: ["said that the United States is free from Great Britain","announced our independence", "declared our indpendence"]),
        //here
        ReviewQuestion(ReviewQuestion: "What are two rights in the Declaration of Independence", ReviewWrongAnswers: ["life and luxury", "money and the pursuit of happiness", "opportunity and occupation"], ReviewCorrectAnswers: ["life and liberty", "liberty and the pursuit of happiness", "life and the pursuit of happiness"]),
        ReviewQuestion(ReviewQuestion: "What is freedom of religion?", ReviewWrongAnswers: ["one must practice a religious of choice", "one must not practice religion", "one must practice a specific religion"], ReviewCorrectAnswers: ["one can practice any religion, or not practice a religion"]),
        //10
            //here
            ReviewQuestion(ReviewQuestion: "What is the economic system in the United States?", ReviewWrongAnswers: ["mixed economy", "pure command economy", "traditional economy"], ReviewCorrectAnswers: ["capitalist economy","market economy"]),
            //here
        ReviewQuestion(ReviewQuestion: "What is the 'rule of law'?", ReviewWrongAnswers: ["citizens must obey the law", "landowners must obey the law", "the wealthy must obey the law"], ReviewCorrectAnswers: ["everyone must obey the law", "leaders must obey the law", "government must obey the law", "no one is above the law"]),
        //here
        ReviewQuestion(ReviewQuestion: "Name one branch or part of the government.", ReviewWrongAnswers: ["the citizens", "the Constitution", "the Thirteen original colonies"], ReviewCorrectAnswers: ["Congress","legislative","President","executive","the courts","judicial"]),
        //here
        ReviewQuestion(ReviewQuestion: "What stops one branch of government from becoming too powerful?", ReviewWrongAnswers: ["Great Britain's parliament", "the citizen's powers", "starts and stops"], ReviewCorrectAnswers: ["checks and balances","separation of powers"]),
        ReviewQuestion(ReviewQuestion: "Who is in charge of the executive branch?", ReviewWrongAnswers: ["the Secretary of State", "the Speaker of the House", "the head judge"], ReviewCorrectAnswers: ["the President"]),
        //15
        ReviewQuestion(ReviewQuestion: "Who makes federal laws?", ReviewWrongAnswers: ["the President", "the Vice President", "the citizens"], ReviewCorrectAnswers: ["Congress","Senate and House","legislature"]),
        //here
        ReviewQuestion(ReviewQuestion: "What are the two parts of the U.S. Congress?", ReviewWrongAnswers: ["the Secretary of State and the Supreme Court judge", "the citizens and their counterparts", "the President and the Vice President"], ReviewCorrectAnswers: ["Senate and House"]),
        ReviewQuestion(ReviewQuestion: "How many U.S. Senators are there?", ReviewWrongAnswers: ["20", "25", "50"], ReviewCorrectAnswers: ["100"]),
        ReviewQuestion(ReviewQuestion: "We elect a U.S. Senator for how many years?", ReviewWrongAnswers: ["1", "2", "10"], ReviewCorrectAnswers: ["6"]),
        //here
            
            
            
            //yiikes
        ReviewQuestion(ReviewQuestion: "Who is one of your state's U.S. Senators now?", ReviewWrongAnswers: ["President Trump", "Senator Johnson", "Hilary Clinton"], ReviewCorrectAnswers: ["Elizabeth Warren","none"]),
        //20
        ReviewQuestion(ReviewQuestion: "The House of Representatives has how many voting members?", ReviewWrongAnswers: ["50", "235", "355"], ReviewCorrectAnswers: ["435"]),
        ReviewQuestion(ReviewQuestion: "We elect a U.S. Representative for how many years?", ReviewWrongAnswers: ["1","4", "8"], ReviewCorrectAnswers: ["2"]),
        ReviewQuestion(ReviewQuestion: "Name your U.S. Representative.", ReviewWrongAnswers: ["Ed Markey", "Cristiano Ronaldo", "Emmie Ohnuki"], ReviewCorrectAnswers: ["Niki Tsongas"]),
        ReviewQuestion(ReviewQuestion: "Who does a U.S. Senator represent?", ReviewWrongAnswers: ["the people of the nation", "all people", "the concerns of the city"], ReviewCorrectAnswers: ["all people of the state"]),
        //here
        ReviewQuestion(ReviewQuestion: "Why do some states have more Representatives than other states?", ReviewWrongAnswers: ["the state's importance", "the state's history", "the number of counties"], ReviewCorrectAnswers: ["the state's population","because they have more people","because some states have more people"]),
        //25
        ReviewQuestion(ReviewQuestion: "We elect a president for how many years?", ReviewWrongAnswers: ["8", "13", "16"], ReviewCorrectAnswers: ["4"]),
        ReviewQuestion(ReviewQuestion: "In what month do we vote for President?", ReviewWrongAnswers: ["Janurary", "March", "December"], ReviewCorrectAnswers: ["November"]),
        //here
        ReviewQuestion(ReviewQuestion: "What is the name of the President of the United States now?", ReviewWrongAnswers: ["Hilary Clinton", "Bill Clinton", "Barack Obama"], ReviewCorrectAnswers: ["Donald Trump", "Trump"]),
        //here
        ReviewQuestion(ReviewQuestion: "What is the name of the Vice President of the United States now?", ReviewWrongAnswers: ["Donald Trump", "Ronald Reagan", "Joe Biden"], ReviewCorrectAnswers: ["Mike Pence", "Pence"]),
        ReviewQuestion(ReviewQuestion: "If the President can no longer serve, who becomes President?", ReviewWrongAnswers: ["the Speaker of the House", "The President's first born child", "the First Lady"], ReviewCorrectAnswers: ["the Vice President"]),
        //30
        ReviewQuestion(ReviewQuestion: "If both the President and the Vice President can no longer serve, who becomes President?", ReviewWrongAnswers: ["the President's delegate", "the Secretary of War", "the First Lady"], ReviewCorrectAnswers: ["The Speaker of the House"]),
        ReviewQuestion(ReviewQuestion: "Who is the Commander in Chief of the military?", ReviewWrongAnswers: ["the Secretary of Defense", "the Secretary of the Interior", "the Vice President"], ReviewCorrectAnswers: ["the President"]),
        ReviewQuestion(ReviewQuestion: "Who signs bills to become laws?", ReviewWrongAnswers: ["the Congress", "the Secretary of State", "the Vice President"], ReviewCorrectAnswers: ["the President"]),
        ReviewQuestion(ReviewQuestion: "What does the President's Cabinet do?", ReviewWrongAnswers: ["stores items", "overrides his/her decisions", ""], ReviewCorrectAnswers: ["advises the President"]),
        ReviewQuestion(ReviewQuestion: "What are two Cabinet-level positions?", ReviewWrongAnswers: ["President", "", ""], ReviewCorrectAnswers: ["Secretary of Agriculture","Secretary of Commerce","Secretary of Defense","Secretary of Education","Secretary of Energy","Secretary of Health and Human Services","Secretary of Homeland Security","Secretary of Housing and Urban Development","Secretary of the Interior","Secretary of Labor","Secretary of State","Secretary of Transportation","Secretary of the Treasury","Secretary of Veterans Affairs","Attorney General", "Vice President"]),
        //35
        ReviewQuestion(ReviewQuestion: "", ReviewWrongAnswers: ["", "", ""], ReviewCorrectAnswers: [""]),
        ReviewQuestion(ReviewQuestion: "", ReviewWrongAnswers: ["", "", ""], ReviewCorrectAnswers: [""]),
        ReviewQuestion(ReviewQuestion: "", ReviewWrongAnswers: ["", "", ""], ReviewCorrectAnswers: [""]),
        ReviewQuestion(ReviewQuestion: "", ReviewWrongAnswers: ["", "", ""], ReviewCorrectAnswers: [""]),
        ReviewQuestion(ReviewQuestion: "", ReviewWrongAnswers: ["", "", "", ""], ReviewCorrectAnswers: [""]),
        //40
        
//        ReviewQuestion(ReviewQuestion: "What is one responsibility that is only for United States citizens?", ReviewPossibleAnswers: ["serve on a jury", "pay taxes", "be respectful of others", "obey the law"], ReviewCorrectAnswers: 0),
//         ReviewQuestion(ReviewQuestion: "Name the U.S. war between the North and the South.", ReviewPossibleAnswers: ["The Civil War", "World War I", "the Revolutionary War", "The War of 1812"], ReviewCorrectAnswers: 0),
//         ReviewQuestion(ReviewQuestion: "What is one thing Benjamin Franklin is famous for?", ReviewPossibleAnswers: ["inventor of the airplane", "third president of the United States", "youngest member of the Constitutional Convention", "U.S. diplomat"], ReviewCorrectAnswers: 3),
         
         
        ].forEach { (question) in
            ReviewQList.append(question)
        }
        
    }
}
