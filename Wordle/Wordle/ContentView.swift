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
    
    @State var letterColors: [String: Color] = ["A": Color(.systemGray)]
    @State var todaysWord:String = "Loading Word"
    @State var todaysDate:String = "Loading Date"
    @State var mWord: [[Character]] = [[],[],[],[],[],[]]
    @State var won = false
    @State var title = "CIEE WORDLE"
    @State var wWord:String = "E"
    @State var mCurIndex:Int = 0
    @State var mCurLine:Int = 0
    @State var running:Bool = false
    @State var degs:Double = 0.0
    @State var enabled:Bool = true
    @State var finalScale = 1.0
    @State var scaled:[[Double]] = [[1,1,1,1,1],[1,1,1,1,1],[1,1,1,1,1],[1,1,1,1,1],[1,1,1,1,1], [1,1,1,1,1]]
    @State var colors:[[Color]] = [[Color("BackgroundBlack"), Color("BackgroundBlack"), Color("BackgroundBlack"), Color("BackgroundBlack"), Color("BackgroundBlack")], [Color("BackgroundBlack"), Color("BackgroundBlack"), Color("BackgroundBlack"), Color("BackgroundBlack"), Color("BackgroundBlack")], [Color("BackgroundBlack"), Color("BackgroundBlack"), Color("BackgroundBlack"), Color("BackgroundBlack"), Color("BackgroundBlack")], [Color("BackgroundBlack"), Color("BackgroundBlack"), Color("BackgroundBlack"), Color("BackgroundBlack"), Color("BackgroundBlack")], [Color("BackgroundBlack"), Color("BackgroundBlack"), Color("BackgroundBlack"), Color("BackgroundBlack"), Color("BackgroundBlack")], [Color("BackgroundBlack"), Color("BackgroundBlack"), Color("BackgroundBlack"), Color("BackgroundBlack"), Color("BackgroundBlack")]]
    

    
    fileprivate func animateSquares(line:Int) {
        enabled = false
        
        let status:[Color] = ServerUtils.crazyShit(word: mWord[mCurLine-1])
        print(mCurLine-1)
        withAnimation(.easeInOut(duration: 0.15)) {
            scaled[mCurLine-1][0] = 0.0
        }
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.15) {
            colors[mCurLine-1][0] = status[0]
            withAnimation(.easeInOut(duration: 0.15)) {
                scaled[mCurLine-1][0] = 1.0
            }
        }
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.3) {
            withAnimation(.easeInOut(duration: 0.15)) {
                scaled[mCurLine-1][1] = 0.0
            }
        }
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.45) {
            colors[mCurLine-1][1] = status[1]
            withAnimation(.easeInOut(duration: 0.15)) {
                scaled[mCurLine-1][1] = 1.0
            }
        }
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.6) {
            withAnimation(.easeInOut(duration: 0.15)) {
                scaled[mCurLine-1][2] = 0.0
            }
        }
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.75) {
            colors[mCurLine-1][2] = status[2]
            withAnimation(.easeInOut(duration: 0.15)) {
                scaled[mCurLine-1][2] = 1.0
            }
        }
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.9) {
            withAnimation(.easeInOut(duration: 0.15)) {
                scaled[mCurLine-1][3] = 0.0
            }
        }
        DispatchQueue.main.asyncAfter(deadline: .now() + 1.05) {
            colors[mCurLine-1][3] = status[3]
            withAnimation(.easeInOut(duration: 0.15)) {
                scaled[mCurLine-1][3] = 1.0
            }
        }
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 1.2) {
            withAnimation(.easeInOut(duration: 0.15)) {
                scaled[mCurLine-1][4] = 0.0
            }
        }
        DispatchQueue.main.asyncAfter(deadline: .now() + 1.35) {
            colors[mCurLine-1][4] = status[4]
            withAnimation(.easeInOut(duration: 0.15)) {
                scaled[mCurLine-1][4] = 1.0
            }
            
        }
        DispatchQueue.main.asyncAfter(deadline: .now() + 1.5) {
//            lost()
            enabled = true
            keyColors(stat: status)
            if (mCurLine > 5){
                lost()
            }
            //winner()
            if (!status.contains(Color("Amarillo")) && !status.contains(Color("Gris"))){
                winner()
            }
            
        }
        
    }
    
    fileprivate func lost(){
        withAnimation(.easeInOut(duration: 0.35)) {
            finalScale = 0.0
        }
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.35) {
            title = "Sucks to suck"
            
            withAnimation(.easeInOut(duration: 0.35)) {
                finalScale = 1.0
            }
        }
        DispatchQueue.main.asyncAfter(deadline: .now() + 2.7) {
            
            withAnimation(.easeInOut(duration: 0.35)) {
                finalScale = 0.0
            }
        }
        DispatchQueue.main.asyncAfter(deadline: .now() + 3.15) {
            title = "CIEE WORDLE"
            withAnimation(.easeInOut(duration: 0.35)) {
                finalScale = 1.0
            }
        }
    }
    
    fileprivate func keyColors(stat:[Color]){
        var i = 0
        for letter in mWord[mCurLine-1]{
            if let curColor = letterColors[String(letter)]{
                if (curColor == Color("Verde")){
                    print("already green")
                }
                else{
                    
                    if (stat[i] == Color("Amarillo") || stat[i] == Color("Verde")){
                        letterColors[String(letter)] = stat[i]
                    }
             
                    
                }
            }
            else{
                letterColors[String(letter)] = stat[i]
            }
            i+=1
        }
        
        
    }
    
    fileprivate func winner(){
        enabled = false
  
        let generator = UINotificationFeedbackGenerator()
        generator.notificationOccurred(.error)
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.4) {
            generator.notificationOccurred(.error)
        }
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.8) {
            generator.notificationOccurred(.error)
        }
        DispatchQueue.main.asyncAfter(deadline: .now() + 1.2) {
            generator.notificationOccurred(.success)
        }
        
        withAnimation(.easeInOut(duration: 1.5)) {
            degs = 720.0
        }
    }
    
    
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
                        Text(title)
                            .font(.title)
                            .fontWeight(.bold)
                            .foregroundColor(Color.white)
                            .scaleEffect(finalScale)
                        Spacer()
                        Image(systemName: "gamecontroller")
                            .foregroundColor(Color(.systemGray3))
                            .padding(.trailing, 20)
                            .font(.title)
                            
                    }
                    
                    
                    Divider().foregroundColor(Color("BackgroundBlack"))
                    
                    
                    Words(word: $mWord, curIndex: mCurIndex, curLine: $mCurLine, scale: $scaled, colors: $colors)
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
                                
                                
                                
                                animateSquares(line: mCurLine)
                            }
                            else{
                                let generator = UINotificationFeedbackGenerator()
                                generator.notificationOccurred(.warning)
                                print("error")
                            }
                            
                            if (mCurLine > 5){
                                print("disabled")
                                enabled = false
                            }
                        }
                        else{
                            let generator = UINotificationFeedbackGenerator()
                            generator.notificationOccurred(.warning)
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
                    
                    Keyboard(word: $mWord, curIndex: mCurIndex, curLine: $mCurLine, going: $enabled, colors: $letterColors).frame(height: geometry.size.height/4)
                        .padding(.bottom, 5)
                        
                }
                
            }.rotationEffect(.degrees(degs))
                .background(Color("BackgroundBlack"))
                
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
