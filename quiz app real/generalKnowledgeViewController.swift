//
//  generalKnowledgeViewController.swift
//  quiz app real
//
//  Created by Sarah Roodin on 12/3/21.
//

import UIKit

class generalKnowledgeViewController: UIViewController {
    let questionData1 = Singleton.shared
    
    @IBOutlet weak var QuestionButton: UILabel!
    @IBOutlet weak var DButton: UIButton!
    @IBOutlet weak var CButton: UIButton!
    @IBOutlet weak var BButton: UIButton!
    @IBOutlet weak var AButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let randomInt = Int.random(in: 0..<50)
        //set the question uilabel to the question
        AButton.setTitle(questionData1.arrayOfAPIS[0].A, for: .normal)
        BButton.setTitle(questionData1.arrayOfAPIS[0].B, for: .normal)
        CButton.setTitle(questionData1.arrayOfAPIS[0].C, for: .normal)
        DButton.setTitle(questionData1.arrayOfAPIS[0].D, for: .normal)
        
       
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
