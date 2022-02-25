//
//  ServerUtils.swift
//  Wordle
//
//  Created by Elijah Valine on 2/4/22.
//


import Foundation
import SwiftUI

struct wordSet: Decodable{
    let words:[lilWord]
}

struct lilWord: Decodable{
    let word:String
    let date:String
    
}

extension Data {
    mutating func appendString(_ string: String) {
    if let data = string.data(using: .utf8) {
      self.append(data)
    }
  }
}

/// Controller class with static functions for bring information from the model to the views.
class ServerUtils {
    
//    static let serverUrl = getAddress(15.0, 20.0)
    
    /// Gets all the posts in the db
    /// - Parameter returnWith: Asychronous Callback
    /// - Returns: The array of post objects and success boolean
    static func getTodaysWord(returnWith: @escaping (lilWord?, Bool)->()) {
        
        let serverUrl = "https://suspicious-liskov-0b0286.netlify.app/wordle.txt"
        let session = URLSession.shared
        let decoder = JSONDecoder()
        
        if let url = URL(string: serverUrl) {
            let task = session.dataTask(with: url, completionHandler: { data1, response, error in
                if (error != nil) {
                    returnWith(nil, false)
                    return
                }
                
                if let dataString = String(data: data1!, encoding: .utf8) {
                    print(dataString)
                    
                    do {
                        
                        let wordleSet = try decoder.decode(wordSet.self, from: Data(dataString.utf8))
                        
                        returnWith(wordleSet.words[0], true)
                        #warning("TODO Adrian")
                        //Ok so this is where you need to do your work. Right now it decodes a json object into the structs at the beginning of this file. Also, right now i am just returning the first word of the wordset as opposed to the word with the date corresponding to today. So you gotta do that lol
                    }
                        
                    catch let jsonError {
                        print("Error Serializing JSON", jsonError)
                        returnWith(nil, false)
                    }
                } else {
                  returnWith(nil, false)
                }
                
            })
            
            task.resume()
            
        }
    }
    
    
    /*
     This function takes an array of characters (pretty much a string but its easier for me =D) and return which letters are in the correct spot. Return Color("Verde") if its in the correct spot, Color("Amarillo") if the letter is in the word, and Color("Gris") if its completely wrong. 
     */
    static func crazyShit(word:[Character])->[Color]{
        #warning("TODO Adrian")
        
        //This is just a placeholder
        let returner:[Color] = [Color("Verde"),Color("Gris"),Color("Gris"),Color("Amarillo"),Color("Verde")]
        
        
        return returner
        
    }
    
    /*
     Same type of thing. takes an array of chars and you just need to return if its a word. ideally check for both spanish and english. I'd start with UITextChecker and see what you can work with that.
     
        This might be able to help:
        https://developer.apple.com/forums/thread/110326
     */
    static func realWord(word:[Character])->Bool {
        //TODO
        #warning("TODO Adrian")
        return true
    }
    
    
}

