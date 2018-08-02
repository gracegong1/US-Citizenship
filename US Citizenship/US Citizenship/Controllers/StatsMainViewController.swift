//
//  StatsMainViewController.swift
//  US Citizenship
//
//  Created by Grace Gong on 7/23/18.
//  Copyright © 2018 Grace Gong. All rights reserved.
//

import Foundation
import UIKit

class StatsMainViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    var testResults = CoreDataHelper.retrieveTestResults()
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 2
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: <#T##String#>, for: <#T##IndexPath#>)
        //downcast as cell class
    }
    
    
    @IBOutlet weak var testResultsTableView: UITableView!
    
}
