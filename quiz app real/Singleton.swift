//
//  Singleton.swift
//  quiz app real
//
//  Created by Sarah Roodin on 12/3/21.
//

import Foundation
class Singleton{
    var arrayOfAPIS: [Question] = []
    static let shared: Singleton = {
    let instance = Singleton()
        instance.fetchAPIData{(questionList) in
            for question in questionList{
                        //get data into the array
                        arrayOfAPIS.append(Question(question:a.question, A:a.A, B:a.B, C:a.C, D:a.D, answer:a.answer))
                    }
                }
        return instance()
    }
        
    
    func fetchAPIData(completionHandler:@escaping([Question]) -> Void){
        let url = URL(string: "https://pastebin.com/raw/QRGzxxEy")!
        
        let _: Void = URLSession.shared.dataTask(with: url) { data, response, error in
            guard let data = data else {
                return
            }
            do{
                let APIData = try JSONDecoder().decode([Question].self, from: data)
                
                completionHandler(APIData)
            }
            catch{
                let error = error
                print(error.localizedDescription)
            }
        }.resume()
    }
    func buildArray(){
        
   
    }
}
