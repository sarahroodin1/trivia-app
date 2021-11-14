//
//  helpPageTableView.swift
//  quiz app real
//
//  Created by Sarah Roodin on 11/2/21.
//
import UIKit

class Section{
    let title: String
    let option: [String]
    var isOpened:Bool =  false
    
    init(title:String, option:[String], isOpened: Bool = false){
        self.title = title
        self.option = option
        self.isOpened = isOpened
    }
}
