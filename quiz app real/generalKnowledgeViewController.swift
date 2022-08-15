//
//  generalKnowledgeViewController.swift
//  quiz app real
//
//  Created by Sarah Roodin on 12/3/21.
//

import UIKit

class GeneralKnowledgeViewController: UIViewController {
    let randomInt = Int.random(in: 0..<548)
    let correctAnswer = questionData1.arrayOfQuestions[randomInt].answer
    var questionNumber = 0

    @IBAction func ButtonPressed(_ sender:Any){
        var scoreLabel = 0
        let userAnswer = sender.currentTitle!
        let userGotItRight = questionData1.checkAnswer(userAnswer)
        
        
        if(userGotItRight){
            sender.setTitleColor = UIColor.green
        }
        else{
            sender.setTitleColor = UIColor.red
        }
        questionData1.nextQuestion()
        
     Timer.scheduledTimer(timeInterval: 0.2, target: self, selector: #selector(updateUI), userInfo: nil, repeats: false)
        
    }
       
        
    
    @IBOutlet weak var QuestionButton: UILabel!
    @IBOutlet weak var DButton: UIButton!
    @IBOutlet weak var CButton: UIButton!
    @IBOutlet weak var BButton: UIButton!
    @IBOutlet weak var AButton: UIButton!
    @IBOutlet weak var scoreLabel: UILabel!

    override func viewDidLoad() {
        
    //makes a singleton object
        super.viewDidLoad()
            DispatchQueue.main.async{
                randomizer()
            
        }
        
    //sets the question,a,b,c,&d buttons to the value of the api that is resulted from the randomint

        func randomizer(){
        QuestionButton.text = questionData1.arrayOfQuestions[randomInt].question
        QuestionButton.font = UIFont(name: " ", size: 5)
        AButton.setTitle(questionData1.arrayOfQuestions[randomInt].A, for: .normal)
        BButton.setTitle(questionData1.arrayOfQuestions[randomInt].B, for: .normal)
        CButton.setTitle(questionData1.arrayOfQuestions[randomInt].C, for: .normal)
        DButton.setTitle(questionData1.arrayOfQuestions[randomInt].D, for: .normal)
         
        }
        
        //checks if the user answer is correct
        func checkAnswer(_ userAnswer: String) -> Bool{
            if(userAnswer == correctAnswer){
                return true
                //user is correct
            }
           return false
                //user is incorrect
        }
        
        //changes the question
        func nextQuestion(){
            if(questionNumber + 1 < quiz.count){
                questionNumber += 1
            }
            else{
                questionNumber = 0
                scoreValue = 0
            }
        }
        
    }
}
