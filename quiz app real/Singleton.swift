//
//  Singleton.swift
//  quiz app real
//
//  Created by Sarah Roodin on 12/3/21.
//

import Foundation
import Alamofire

class Singleton{
    
    static let sharedInstance = Singleton()
    var arrayOfQuestions: [Question] = []
    
    
    init() {
        print("hi")
        AF.request("https://pastebin.com/raw/QRGzxxEy").responseData {response in
            switch response.result{
            case .success(let data):
                do {
                    let result = try JSONDecoder().decode([Question].self, from: data)
                    for r in result {
                        self.arrayOfQuestions.append(r)
                    }
                    print(self.arrayOfQuestions)
                }
                catch (let error){
                    print("Decoding error: \(error)")
                }
            case .failure(let error):
                print(error)
            }
        }
    }
    
   /* func fetchAPIData(completion:@escaping([Question]) -> Void){
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
    }*/
}
