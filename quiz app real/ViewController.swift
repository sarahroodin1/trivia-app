//
//  ViewController.swift
//  quiz app real
//
//  Created by Sarah Roodin on 9/22/21.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        fetchAPIData {(APIs) in
            for API in APIs {
                print(API.question!)
            }
        }
    }
    //fetchAPIData function retrieves the data from the API so I can use it
    func fetchAPIData(completionHandler:@escaping([API]) -> Void){
        let url = URL(string: "https://pastebin.com/raw/QRGzxxEy")!
        
        let task = URLSession.shared.dataTask(with: url) { data, response, error in
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

