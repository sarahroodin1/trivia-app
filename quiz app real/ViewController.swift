//
//  ViewController.swift
//  quiz app real
//
//  Created by Sarah Roodin on 9/22/21.
//

import UIKit

class ViewController: UIViewController {
    var arrayOfAPIS: [API]!
    
    @IBOutlet weak var question: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
    
    
        /*class API {

        var first = API(question: <#T##String?#>, A: <#T##String#>, B: <#T##String#>, C: <#T##String#>, D: <#T##String#>, answer: <#T##String#>)
        }*/
        
        
     
        //fetchAPIData function retrieves the data from the API so I can use it
        fetchAPIData {(APIs) in
            for a in APIs {
                print(a.question!)
                //get data into the array
                self.arrayOfAPIS.append(API(question:a.question, A:a.A, B:a.B, C:a.C, D:a.D, answer:a.answer))
            }
        }
    }
    func fetchAPIData(completionHandler:@escaping([API]) -> Void){
        let url = URL(string: "https://pastebin.com/raw/QRGzxxEy")!
        
        let _: Void = URLSession.shared.dataTask(with: url) { data, response, error in
            guard let data = data else {
                return
            }
            do{
                let APIData = try JSONDecoder().decode([API].self, from: data)
                completionHandler(APIData)
            }
            catch{
                let error = error
                print(error.localizedDescription)
            }
        }.resume()
    }
    
}

