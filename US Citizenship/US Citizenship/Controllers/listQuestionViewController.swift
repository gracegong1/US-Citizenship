//
//  listQuestionViewController.swift
//  US Citizenship
//
//  Created by Grace Gong on 7/23/18.
//  Copyright © 2018 Grace Gong. All rights reserved.
//

import Foundation
import UIKit

class ListQuestionTableViewController: UITableViewController {
    
let questionsObject = USGov()

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    let questionsListed = USGov()
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // 1
        return questionsObject.ReviewQList.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//        let cell = tableView.dequeueReusableCell(withIdentifier: "listedQuestionTableViewCell", for: indexPath) as! ListQuestionTableViewCell
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "listedQuestionTableViewCell") as!
ListQuestionTableViewCell
        
        let correctAnswersAsString = questionsObject.ReviewQList[indexPath.row].CorrectAnswers.joined(separator: ", ")
        
        cell.listAllQuestionLabel.text = "\(indexPath.row + 1). " + questionsObject.ReviewQList[indexPath.row].Question
        cell.listAllAnswerLabel.text = correctAnswersAsString
       
        return cell
    }
}
