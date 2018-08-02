//
//  CoreDataHelper.swift
//  US Citizenship
//
//  Created by Grace Gong on 8/2/18.
//  Copyright © 2018 Grace Gong. All rights reserved.
//

import Foundation
import UIKit
import CoreData

struct CoreDataHelper {
    static let context: NSManagedObjectContext = {
        guard let appDelegate = UIApplication.shared.delegate as? AppDelegate else {
            fatalError()
        }
        let persistentContainer = appDelegate.persistentContainer
        let context = persistentContainer.viewContext
        
        return context
    }()
    
    static func newTestResult() -> TestResult {
        let testResult = NSEntityDescription.insertNewObject(forEntityName: "TestResult", into: context) as! TestResult
        return testResult
    }
    
    static func save() {
        do {
            try context.save()
            print(context)
        } catch let error {
            print("Could not save \(error.localizedDescription)")
        }
    }
    
    static func retrieveTestResults() -> [TestResult] {
        do {
            let fetchRequest = NSFetchRequest<TestResult>(entityName: "TestResult")
            let results = try context.fetch(fetchRequest)
            return results
        } catch let error {
            print("Could not fetch \(error.localizedDescription)")
            return []
        }
    }
    
    static func delete(testResult: TestResult) {
        context.delete(testResult)
        save()
    }
}
