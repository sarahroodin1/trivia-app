//
//  API.swift
//  quiz app real
//
//  Created by Sarah Roodin on 10/24/21.
//


import Foundation
//file for the API and creates variables for each of the attributes in the API file
struct Question: Codable{
    var question: String!
    var A: String
    var B: String
    var C: String
    var D: String
    var answer: String
}
