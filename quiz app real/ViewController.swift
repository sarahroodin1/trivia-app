//
//  ViewController.swift
//  quiz app real
//
//  Created by Sarah Roodin on 9/22/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var FAQButton: UIButton!
    @IBOutlet weak var topicsButton: UIButton!
    @IBOutlet weak var playButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //makes all of the buttons on the home page have rounded corners
        playButton.layer.cornerRadius = 6.0
        topicsButton.layer.cornerRadius = 6.0
        playButton.layer.cornerRadius = 6.0
        
        
        fetchAPIData {(APIs) in
            for API in APIs {
                print(API.question!)
            }
        }
    }
    //fetchAPIData function retrieves the data from the API so I can use it
    func fetchAPIData(completionHandler:@escaping([API]) -> Void){
        let url = URL(string: "https://pastebin.com/raw/QRGzxxEy")!
        
        let task: Void = URLSession.shared.dataTask(with: url) { data, response, error in
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

