//
//  generalKnowledgeViewController.swift
//  quiz app real
//
//  Created by Sarah Roodin on 12/3/21.
//

import UIKit

class GeneralKnowledgeViewController: UIViewController {
    
    @IBOutlet weak var QuestionButton: UILabel!
    @IBOutlet weak var DButton: UIButton!
    @IBOutlet weak var CButton: UIButton!
    @IBOutlet weak var BButton: UIButton!
    @IBOutlet weak var AButton: UIButton!
    @IBOutlet weak var scoreLabel: UILabel!
    let questionData1 = Singleton()

    override func viewDidLoad() {
        
    //makes a singleton object
        let randomInt = 0
        super.viewDidLoad()
            DispatchQueue.main.async{
                randomizer()
            
        }
        
    //sets the question,a,b,c,&d buttons to the value of the api that is resulted from the randomint
        func randomizer(){
        /*QuestionButton.text = questionData1.arrayOfQuestions[randomInt].question
       AButton.setTitle(questionData1.arrayOfQuestions[randomInt].A, for: .normal)
        BButton.setTitle(questionData1.arrayOfQuestions[randomInt].B, for: .normal)
        CButton.setTitle(questionData1.arrayOfQuestions[randomInt].C, for: .normal)
        DButton.setTitle(questionData1.arrayOfQuestions[randomInt].D, for: .normal)
         */
        }
    }
}

      /* var scoreLabel = 0
        //creates a correct answer variable and changes the button color and text to be green and say 'correct'
       let correctAnswer = questionData1.arrayOfQuestions[randomInt].answer
        
        if(correctAnswer == questionData1.arrayOfQuestions[randomInt].A){
            AButton.setTitle("Correct", for: .normal)
            scoreLabel++
        }
       else if(correctAnswer == questionData1.arrayOfQuestions[randomInt].B){
            BButton.setTitle("Correct", for: .normal)
            scoreLabel++

        }
        else if(correctAnswer == questionData1.arrayOfQuestions[randomInt].C){
            CButton.setTitle("Correct", for: .normal)
            scoreLabel++

        }
        else{
        DButton.setTitle("Correct", for: .normal)
            scoreLabel++

        }
       */
        // Do any additional setup after loading the view.
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
//    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//        // Get the new view controller using segue.destination.
//        // Pass the selected object to the new view controller.
//    }
