//
//  ContentView.swift
//  Wordle
//
//  Created by Elijah Valine on 2/2/22.
//

import SwiftUI

extension View {

  func hapticFeedbackOnTap(style: UIImpactFeedbackGenerator.FeedbackStyle = .light) -> some View {
    self.onTapGesture {
      let impact = UIImpactFeedbackGenerator(style: style)
      impact.impactOccurred()
    }
  }

}

struct ContentView: View {
    
    @State var todaysWord:String = "Loading Word"
    @State var todaysDate:String = "Loading Date"
    @State var mWord: [[Character]] = [[],[],[],[],[],[]]
    @State var wWord:String = "E"
    @State var mCurIndex:Int = 0
    @State var mCurLine:Int = 0
    @State var enabled:Bool = true
    
    var body: some View {
    
        GeometryReader { geometry in
            ZStack{
                
                

                
                Color("BackgroundBlack").edgesIgnoringSafeArea(.all)
                VStack{
                   
//                    Text(mWord).font(.headline).foregroundColor(.white)
                    HStack{
                        Image(systemName: "gamecontroller")
                            .foregroundColor(Color(.systemGray3))
                            .opacity(0.0)
                            .padding(.leading, 20.0)
                            .font(.title)
                        Spacer()
                        Text("CIEE WORDLE")
                            .font(.title)
                            .fontWeight(.bold)
                            .foregroundColor(Color.white)
                        Spacer()
                        Image(systemName: "gamecontroller")
                            .foregroundColor(Color(.systemGray3))
                            .padding(.trailing, 20)
                            .font(.title)
                            
                    }
                    
                    
                    Divider().foregroundColor(Color("BackgroundBlack"))
                    
                    
                    Words(word: $mWord, curIndex: mCurIndex, curLine: $mCurLine)
                        .padding(.vertical, 10)
//                    Text(todaysWord).foregroundColor(.white)
//                    Text(todaysDate).foregroundColor(.white)
//
                    Divider().foregroundColor(Color("BackgroundBlack"))
                    
                    Button(action: {
                        
                        if(enabled){
                            if (mWord[mCurLine].count == 5){
                                let generator = UINotificationFeedbackGenerator()
                                generator.notificationOccurred(.success)
                                print("Success")
                                mCurLine += 1
                                
                            }
                            else{
                                let generator = UINotificationFeedbackGenerator()
                                generator.notificationOccurred(.error)
                                print("error")
                            }
                            
                            if (mCurLine > 5){
                                print("disabled")
                                enabled = false
                            }
                        }
                        else{
                            let generator = UINotificationFeedbackGenerator()
                            generator.notificationOccurred(.error)
                            print("error1")
                        }
                        
                        

                    }){
                        ZStack{
                            Text("ENVIAR")
                                .font(.title3)
                                .foregroundColor(.white)
                                .fontWeight(.bold)
                                .padding(.vertical)
                                .frame(width: UIScreen.main.bounds.width - 100)
                        }
                    }.background(
                        Color("Verde")
                    )
                    
                    .cornerRadius(30)
//                    .offset(y: -40)
                    .padding(.vertical, 10)
                    .shadow(radius: 5)
                    
                    Keyboard(word: $mWord, curIndex: mCurIndex, curLine: $mCurLine, going: $enabled).frame(height: geometry.size.height/4)
                        .padding(.bottom, 5)
                        
                }
                
            }
        }
        
        
        .onAppear(){
            reload()
        }
    }
    
    func reload(){
        
        
        ServerUtils.getTodaysWord(returnWith:  { response, success in
            if (!success) {
                
                // Show error UI here
                print("OH NO IT FAILED")
                return;
            }
            
            todaysWord = response!.word
            todaysDate = response!.date
            
            
        })
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
