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
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    let questionsListed = USGov()
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // 1
        return 10
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//        let cell = tableView.dequeueReusableCell(withIdentifier: "listedQuestionTableViewCell", for: indexPath) as! ListQuestionTableViewCell
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "listedQuestionTableViewCell") as!
ListQuestionTableViewCell
        
        cell.listAllQuestionLabel.text = "i am the question"
        cell.listAllAnswerLabel.text = "i am the answer"
       
        return cell
    }
}
