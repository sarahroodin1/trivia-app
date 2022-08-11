//
//  generalKnowledgeViewController.swift
//  quiz app real
//
//  Created by Sarah Roodin on 12/3/21.
//

import UIKit

class GeneralKnowledgeViewController: UIViewController {
    let randomInt = Int.random(in: 0..<548)

    @IBAction func ButtonPressed(_ sender:Any){
        var scoreLabel = 0
          //creates a correct answer variable and changes the button color and text to be green and say 'correct'
         let correctAnswer = questionData1.arrayOfQuestions[randomInt].answer
       //if A is correct
        if(correctAnswer == questionData1.arrayOfQuestions[randomInt].A){
            AButton.setTitle("Correct", for: .normal)
            AButton.layer.borderWidth = 20

            AButton.layer.borderColor = UIColor(red: 74/255, green: 218/255, blue: 163/225, alpha: 1).cgColor
        }
        //if B is correct
       else if(correctAnswer == questionData1.arrayOfQuestions[randomInt].B){
            BButton.setTitle("Correct", for: .normal)
           BButton.layer.borderWidth = 20

           BButton.layer.borderColor = UIColor(red: 74/255, green: 218/255, blue: 163/225, alpha: 1).cgColor
        }

        //if C is correct
        else if(correctAnswer == questionData1.arrayOfQuestions[randomInt].C){
            CButton.setTitle("Correct", for: .normal)
            CButton.layer.borderWidth = 20

            CButton.layer.borderColor = UIColor(red: 74/255, green: 218/255, blue: 163/225, alpha: 1).cgColor
        }
        //if D is correct
        else{
        DButton.setTitle("Correct", for: .normal)
            DButton.layer.borderWidth = 20

            DButton.layer.borderColor = UIColor(red: 74/255, green: 218/255, blue: 163/225, alpha: 1).cgColor

        }
        
        
        //if A is incorrect
         if (correctAnswer != questionData1.arrayOfQuestions[randomInt].A){
            AButton.setTitle("Incorrect", for: .normal)
            AButton.layer.borderWidth = 20

            AButton.layer.borderColor = UIColor(red: 200/255, green: 10/255, blue: 10/225, alpha: 1).cgColor
        }
        
        //if B is incorrect
        else if (correctAnswer != questionData1.arrayOfQuestions[randomInt].B){
            BButton.setTitle("Incorrect", for: .normal)
            BButton.layer.borderWidth = 20

            BButton.layer.borderColor = UIColor(red: 200/255, green: 10/255, blue: 10/225, alpha: 1).cgColor
        }
        //if C is incorrect
        else if (correctAnswer != questionData1.arrayOfQuestions[randomInt].C){
            CButton.setTitle("Incorrect", for: .normal)
            CButton.layer.borderWidth = 20

            CButton.layer.borderColor = UIColor(red: 200/255, green: 10/255, blue: 10/225, alpha: 1).cgColor
        }
        //if D is incorrect
        else{
            DButton.setTitle("Incorrect", for: .normal)
            DButton.layer.borderWidth = 20

            DButton.layer.borderColor = UIColor(red: 200/255, green: 10/255, blue: 10/225, alpha: 1).cgColor
        }
        
    }
    @IBOutlet weak var QuestionButton: UILabel!
    @IBOutlet weak var DButton: UIButton!
    @IBOutlet weak var CButton: UIButton!
    @IBOutlet weak var BButton: UIButton!
    @IBOutlet weak var AButton: UIButton!
    @IBOutlet weak var scoreLabel: UILabel!
    let questionData1 = Singleton()

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
    }
}

       
        // Do any additional setup after loading the view.
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
//    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//        // Get the new view controller using segue.destination.
//        // Pass the selected object to the new view controller.
//    }
