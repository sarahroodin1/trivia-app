//
//  ViewController.swift
//  quiz app real
//
//  Created by Sarah Roodin on 9/22/21.
//

import UIKit

class ViewController: UIViewController {
    let questionData1 = Singleton()
    override func viewDidLoad() {
        super.viewDidLoad()
        
        questionData1.fetchAPIData{(arrayOfQuestions) in
            for _ in arrayOfQuestions{
                print(self.questionData1.arrayOfQuestions)
            }
        }
        //fetchAPIData function retrieves the data from the API so I can use it
        
    }
    
    
}

