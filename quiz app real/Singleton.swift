//
//  Singleton.swift
//  quiz app real
//
//  Created by Sarah Roodin on 12/3/21.
//

import Foundation
class Singleton{
    let questionData1 = Singleton()
    var arrayOfQuestions: [Question] = []
    
    static let shared: Singleton = {
        let instance = Singleton()
        fetchAPIData(QuestionData1)
        return instance
        
        }()
    
    func fetchAPIData(completion:@escaping([Question]) -> Void){
        let url = URL(string: "https://pastebin.com/raw/QRGzxxEy")!
        
        let task = URLSession.shared.dataTask(with: url) { data, response, error in
            guard let data = data else {
                return
            }
            do{
                let APIData = try JSONDecoder().decode([Question].self, from: data)
                
                completion(APIData)
            }
            catch{
                let error = error
                print(String(describing: error))
            }
        }
            task.resume()
    }
}
