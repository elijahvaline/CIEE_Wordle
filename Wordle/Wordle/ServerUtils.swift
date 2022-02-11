//
//  ServerUtils.swift
//  Wordle
//
//  Created by Elijah Valine on 2/4/22.
//


import Foundation

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
                        //TODO
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
}
