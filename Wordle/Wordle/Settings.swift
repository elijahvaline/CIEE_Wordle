//
//  Settings.swift
//  Wordle
//
//  Created by Elijah Valine on 2/26/22.
//

import SwiftUI
import Foundation

class Settings: ObservableObject {
    
    @Published var mWord: [String]{
        didSet{
            UserDefaults.standard.set(mWord, forKey: "words")
        }
    }
    @Published var curLine:Int{
        didSet{
            UserDefaults.standard.set(curLine, forKey: "line")
        }
    }
    @Published var Colors:[[Int]]{
        didSet{
            UserDefaults.standard.set(Colors, forKey: "color")
        }
    }
    
    
    init() {
       
        self.mWord = UserDefaults.standard.object(forKey: "words") as? [String] ?? []
        self.curLine = UserDefaults.standard.object(forKey: "line") as? Int ?? 1
        self.Colors = UserDefaults.standard.object(forKey: "color") as? [[Int]] ?? [[],[],[],[],[],[]]
    }

    func changey(words:[[Character]]){
        
        var wordsAr:[String] = []
        var cur:String = ""
        
        for wor in words {
            for cha in wor {
               cur += String(cha)
            }
            wordsAr.append(cur)
            cur = ""
        }
        
        mWord = wordsAr
        print("here")
    }
    
    func getWords()->[[Character]]{
        
        var i = 0
        var j = 0
        var returner:[[Character]] = [[],[],[],[],[],[]]
        
        for wor in mWord {
            for cha in wor {
                returner[i].append(cha)
                j+=1
            }
            i+=1
        }
        return returner
    }
    
    func resetDefaults(){
        
        mWord = []
        Colors = [[],[],[],[],[],[]]
        curLine = 0
    }
    
    func setColors(setColors:[[Color]]){
        //0 = BackgroundBlack
        //1 = Gris
        //2 = Amarillo
        //3 = Verde
        
        var savers:[[Int]] = [[],[],[],[],[],[]]
        var i = 0
        print(setColors)
        for ar in setColors {
            for col in ar {
                switch col {
                    
                case Color("BackgroundBlack"):
                    savers[i].append(0)
                    break;
                case Color("Gris"):
                    savers[i].append(1)
                    break;
                case Color("Amarillo"):
                    savers[i].append(2)
                    break;
                case Color("Verde"):
                    savers[i].append(3)
                    break;
                default:
                    print("Default")
                }
            }
            i += 1
        }
        Colors = savers
    }
    
    
    func getColors()->[[Color]]{
        var returner:[[Color]] = [[Color("BackgroundBlack"), Color("BackgroundBlack"), Color("BackgroundBlack"), Color("BackgroundBlack"), Color("BackgroundBlack")], [Color("BackgroundBlack"), Color("BackgroundBlack"), Color("BackgroundBlack"), Color("BackgroundBlack"), Color("BackgroundBlack")], [Color("BackgroundBlack"), Color("BackgroundBlack"), Color("BackgroundBlack"), Color("BackgroundBlack"), Color("BackgroundBlack")], [Color("BackgroundBlack"), Color("BackgroundBlack"), Color("BackgroundBlack"), Color("BackgroundBlack"), Color("BackgroundBlack")], [Color("BackgroundBlack"), Color("BackgroundBlack"), Color("BackgroundBlack"), Color("BackgroundBlack"), Color("BackgroundBlack")], [Color("BackgroundBlack"), Color("BackgroundBlack"), Color("BackgroundBlack"), Color("BackgroundBlack"), Color("BackgroundBlack")]]
        var i = 0
        var j = 0
        
        for ar in Colors {
            
            for col in ar {
                
                switch col {
                case 1:
                    returner[i][j] = Color("Gris")
                    break;
                case 2:
                    returner[i][j] = Color("Amarillo")
                    break;
                case 3:
                    returner[i][j] = Color("Verde")
                    break;
                case 0 :
                    returner[i][j] = Color("BackgroundBlack")
                    break;
                default:
                    print("Default")
                    
                }

                j+=1
            }
            j = 0
            i += 1
        }
        return returner
    }
    
    func setRow(row:Int){
        curLine = row
    }
    func getRow()->Int{
        return curLine
    }
    
}
