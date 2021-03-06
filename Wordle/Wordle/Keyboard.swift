//
//  Keyboard.swift
//  Wordle
//
//  Created by Elijah Valine on 2/2/22.
//

import SwiftUI

extension Color {
    static let offWhite = Color(red: 225 / 255, green: 225 / 255, blue: 235 / 255)

    static let darkStart = Color(red: 50 / 255, green: 60 / 255, blue: 65 / 255)
    static let darkEnd = Color(red: 25 / 255, green: 25 / 255, blue: 30 / 255)

    static let lightStart = Color(red: 60 / 255, green: 160 / 255, blue: 240 / 255)
    static let lightEnd = Color(red: 30 / 255, green: 80 / 255, blue: 120 / 255)
}

extension LinearGradient {
    init(_ colors: Color...) {
        self.init(gradient: Gradient(colors: colors), startPoint: .topLeading, endPoint: .bottomTrailing)
    }
}



struct Keyboard: View {
    @State private var isToggled = false
    @Binding var word: [[Character]]
    @State var curIndex:Int
    @Binding var curLine:Int
    @Binding var going:Bool
    @Binding var colors:[String: Color]
    @ObservedObject var settings = Settings()
    
    var body: some View {
        GeometryReader { geometry in
            
            VStack{
                HStack{
                    Button(action: {
                        let generator = UIImpactFeedbackGenerator(style: .light)
                                    generator.impactOccurred()
                        print("Pressed")
                        if(going){
                            if (word[curLine].count < 5) {
                                word[curLine].append("Q")
                                
                            }
                        }
                        
                        
                        
                    }) {
                        ZStack{
                            RoundedRectangle(cornerRadius: 4)
                                .foregroundColor(colors["Q"] ?? Color(.systemGray))
                            Text("Q")
                                .foregroundColor(.white)
                        }
                            
                    }
                    Button(action: {
                        let generator = UIImpactFeedbackGenerator(style: .light)
                                    generator.impactOccurred()
                        print("Pressed")
                        if (going){
                            if (word[curLine].count < 5) {
                                word[curLine].append("W")
                            }
                        }
                        
                        
                    }) {
                        ZStack{
                            RoundedRectangle(cornerRadius: 4)
                                .foregroundColor(colors["W"] ?? Color(.systemGray))
                            .foregroundColor(Color(.systemGray))
                            Text("W")
                                .foregroundColor(.white)
                        }
                            
                    }
                    Button(action: {
                        let generator = UIImpactFeedbackGenerator(style: .light)
                                    generator.impactOccurred()
                        print("Pressed")
                        if (going){
                            if (word[curLine].count < 5) {
                                word[curLine].append("E")
                            }
                        }
                        
                    }) {
                        ZStack{
                            RoundedRectangle(cornerRadius: 4)
                            .foregroundColor(colors["E"] ?? Color(.systemGray))
                            Text("E")
                                .foregroundColor(.white)
                        }
                            
                    }
                    Button(action: {
                        let generator = UIImpactFeedbackGenerator(style: .light)
                                    generator.impactOccurred()
                        print("Pressed")
                        if (going){
                            if (word[curLine].count < 5) {
                                word[curLine].append("R")
                            }
                        }
                        
                    }) {
                        ZStack{
                            RoundedRectangle(cornerRadius: 4)
                                .foregroundColor(colors["R"] ?? Color(.systemGray))
                            Text("R")
                                .foregroundColor(.white)
                        }
                            
                    }
                    Button(action: {
                        let generator = UIImpactFeedbackGenerator(style: .light)
                                    generator.impactOccurred()
                        print("Pressed")
                        if (going){
                            if (word[curLine].count < 5) {
                                word[curLine].append("T")
                            }
                        }
                        
                    }) {
                        ZStack{
                            RoundedRectangle(cornerRadius: 4)
                                .foregroundColor(colors["T"] ?? Color(.systemGray))
                            Text("T")
                                .foregroundColor(.white)
                        }
                            
                    }
                    Button(action: {
                        let generator = UIImpactFeedbackGenerator(style: .light)
                                    generator.impactOccurred()
                        print("Pressed")
                        if (going){
                            if (word[curLine].count < 5) {
                                word[curLine].append("Y")
                            }
                        }
                        
                    }) {
                        ZStack{
                            RoundedRectangle(cornerRadius: 4)
                                .foregroundColor(colors["Y"] ?? Color(.systemGray))
                            Text("Y")
                                .foregroundColor(.white)
                        }
                            
                    }
                    Button(action: {
                        let generator = UIImpactFeedbackGenerator(style: .light)
                                    generator.impactOccurred()
                        print("Pressed")
                        if (going){
                            if (word[curLine].count < 5) {
                                word[curLine].append("U")
                            }
                        }
                        
                    }) {
                        ZStack{
                            RoundedRectangle(cornerRadius: 4)
                                .foregroundColor(colors["U"] ?? Color(.systemGray))
                            Text("U")
                                .foregroundColor(.white)
                        }
                            
                    }
                    Button(action: {
                        let generator = UIImpactFeedbackGenerator(style: .light)
                                    generator.impactOccurred()
                        print("Pressed")
                        if (going){
                            if (word[curLine].count < 5) {
                                word[curLine].append("I")
                            }
                        }
                        
                    }) {
                        ZStack{
                            RoundedRectangle(cornerRadius: 4)
                                .foregroundColor(colors["I"] ?? Color(.systemGray))
                            Text("I")
                                .foregroundColor(.white)
                        }
                            
                    }
                    Button(action: {
                        let generator = UIImpactFeedbackGenerator(style: .light)
                                    generator.impactOccurred()
                        print("Pressed")
                        if (going){
                            if (word[curLine].count < 5) {
                                word[curLine].append("O")
                            }
                        }
                        
                    }) {
                        ZStack{
                            RoundedRectangle(cornerRadius: 4)
                                .foregroundColor(colors["O"] ?? Color(.systemGray))
                            Text("O")
                                .foregroundColor(.white)
                        }
                            
                    }
                    Button(action: {
                        let generator = UIImpactFeedbackGenerator(style: .light)
                                    generator.impactOccurred()
                        print("Pressed")
                        if (going){
                            if (word[curLine].count < 5) {
                                word[curLine].append("P")
                            }
                        }
                        
                    }) {
                        ZStack{
                            RoundedRectangle(cornerRadius: 4)
                                .foregroundColor(colors["P"] ?? Color(.systemGray))
                            Text("P")
                                .foregroundColor(.white)
                        }
                            
                    }

                }.padding(.horizontal, 10)
                
                HStack{
                    Button(action: {
                        let generator = UIImpactFeedbackGenerator(style: .light)
                                    generator.impactOccurred()
                        print("Pressed")
                        if (going){
                            if (word[curLine].count < 5) {
                                word[curLine].append("A")
                            }
                        }
                        
                    }) {
                        ZStack{
                            RoundedRectangle(cornerRadius: 4)
                                .foregroundColor(colors["A"] ?? Color(.systemGray))
                            Text("A")
                                .foregroundColor(.white)
                        }
                            
                    }
                    Button(action: {
                        let generator = UIImpactFeedbackGenerator(style: .light)
                                    generator.impactOccurred()
                        print("Pressed")
                        if (going){
                            if (word[curLine].count < 5) {
                                word[curLine].append("S")
                            }
                        }
                        
                    }) {
                        ZStack{
                            RoundedRectangle(cornerRadius: 4)
                                .foregroundColor(colors["S"] ?? Color(.systemGray))
                            Text("S")
                                .foregroundColor(.white)
                        }
                            
                    }
                    Button(action: {
                        let generator = UIImpactFeedbackGenerator(style: .light)
                                    generator.impactOccurred()
                        print("Pressed")
                        if (going){
                            if (word[curLine].count < 5) {
                                word[curLine].append("D")
                            }
                        }
                        
                    }) {
                        ZStack{
                            RoundedRectangle(cornerRadius: 4)
                                .foregroundColor(colors["D"] ?? Color(.systemGray))
                            Text("D")
                                .foregroundColor(.white)
                        }
                            
                    }
                    Button(action: {
                        let generator = UIImpactFeedbackGenerator(style: .light)
                                    generator.impactOccurred()
                        print("Pressed")
                        if (going){
                            if (word[curLine].count < 5) {
                                word[curLine].append("F")
                            }
                        }
                        
                    }) {
                        ZStack{
                            RoundedRectangle(cornerRadius: 4)
                                .foregroundColor(colors["F"] ?? Color(.systemGray))
                            Text("F")
                                .foregroundColor(.white)
                        }
                            
                    }
                    Button(action: {
                        let generator = UIImpactFeedbackGenerator(style: .light)
                                    generator.impactOccurred()
                        print("Pressed")
                        if (going){
                            if (word[curLine].count < 5) {
                                word[curLine].append("G")
                            }
                        }
                        
                    }) {
                        ZStack{
                            RoundedRectangle(cornerRadius: 4)
                                .foregroundColor(colors["G"] ?? Color(.systemGray))
                            Text("G")
                                .foregroundColor(.white)
                        }
                            
                    }
                    Button(action: {
                        let generator = UIImpactFeedbackGenerator(style: .light)
                                    generator.impactOccurred()
                        print("Pressed")
                        if (going){
                            if (word[curLine].count < 5) {
                                word[curLine].append("H")
                            }
                        }
                        
                    }) {
                        ZStack{
                            RoundedRectangle(cornerRadius: 4)
                                .foregroundColor(colors["H"] ?? Color(.systemGray))
                            Text("H")
                                .foregroundColor(.white)
                        }
                            
                    }
                    Button(action: {
                        let generator = UIImpactFeedbackGenerator(style: .light)
                                    generator.impactOccurred()
                        print("Pressed")
                        if (going){
                            if (word[curLine].count < 5) {
                                word[curLine].append("J")
                            }
                        }
                        
                    }) {
                        ZStack{
                            RoundedRectangle(cornerRadius: 4)
                            .foregroundColor(colors["J"] ?? Color(.systemGray))
                            Text("J")
                                .foregroundColor(.white)
                        }
                            
                    }
                    Button(action: {
                        let generator = UIImpactFeedbackGenerator(style: .light)
                                    generator.impactOccurred()
                        print("Pressed")
                        if (going){
                            if (word[curLine].count < 5) {
                                word[curLine].append("K")
                            }
                        }
                        
                    }) {
                        ZStack{
                            RoundedRectangle(cornerRadius: 4)
                            .foregroundColor(colors["K"] ?? Color(.systemGray))
                            Text("K")
                                .foregroundColor(.white)
                        }
                            
                    }
                    Button(action: {
                        let generator = UIImpactFeedbackGenerator(style: .light)
                                    generator.impactOccurred()
                        print("Pressed")
                        if (going){
                            if (word[curLine].count < 5) {
                                word[curLine].append("L")
                            }
                        }
                        
                    }) {
                        ZStack{
                            RoundedRectangle(cornerRadius: 4)
                            .foregroundColor(colors["L"] ?? Color(.systemGray))
                            Text("L")
                                .foregroundColor(.white)
                        }
                            
                    }
                    Button(action: {
                        let generator = UIImpactFeedbackGenerator(style: .light)
                                    generator.impactOccurred()
                        print("Pressed")
                        if (going){
                            if (word[curLine].count < 5) {
                                word[curLine].append("??")
                            }
                        }
                        
                    }) {
                        ZStack{
                            RoundedRectangle(cornerRadius: 4)
                            .foregroundColor(colors["??"] ?? Color(.systemGray))
                            Text("??")
                                .foregroundColor(.white)
                        }
                            
                    }

                }.padding(.horizontal, 10)
                
                HStack{
                    RoundedRectangle(cornerRadius: 4)
                    .foregroundColor(Color(.systemGray))
                    .opacity(0.0)
                    
                    Button(action: {
                        let generator = UIImpactFeedbackGenerator(style: .light)
                                    generator.impactOccurred()
                        print("Pressed")
                        if (going){
                            if (word[curLine].count < 5) {
                                word[curLine].append("Z")
                            }
                        }
                        
                    }) {
                        ZStack{
                            RoundedRectangle(cornerRadius: 4)
                            .foregroundColor(colors["Z"] ?? Color(.systemGray))
                            Text("Z").foregroundColor(.white)
                        }
                            
                    }
                    Button(action: {
                        let generator = UIImpactFeedbackGenerator(style: .light)
                                    generator.impactOccurred()
                        print("Pressed")
                        if (going){
                            if (word[curLine].count < 5) {
                                word[curLine].append("X")
                            }
                        }
                        
                    }) {
                        ZStack{
                            RoundedRectangle(cornerRadius: 4)
                            .foregroundColor(colors["X"] ?? Color(.systemGray))
                            Text("X")
                                .foregroundColor(.white)
                        }
                            
                    }
                    Button(action: {
                        let generator = UIImpactFeedbackGenerator(style: .light)
                                    generator.impactOccurred()
                        print("Pressed")
                        if (going){
                            if (word[curLine].count < 5) {
                                word[curLine].append("C")
                            }
                        }
                        
                    }) {
                        ZStack{
                            RoundedRectangle(cornerRadius: 4)
                            .foregroundColor(colors["C"] ?? Color(.systemGray))
                            Text("C")
                                .foregroundColor(.white)
                        }
                            
                    }
                    Button(action: {
                        let generator = UIImpactFeedbackGenerator(style: .light)
                                    generator.impactOccurred()
                        print("Pressed")
                        if (going){
                            if (word[curLine].count < 5) {
                                word[curLine].append("V")
                            }
                        }
                        
                    }) {
                        ZStack{
                            RoundedRectangle(cornerRadius: 4)
                            .foregroundColor(colors["V"] ?? Color(.systemGray))
                            Text("V")
                                .foregroundColor(.white)
                        }
                            
                    }
                    Button(action: {
                        let generator = UIImpactFeedbackGenerator(style: .light)
                                    generator.impactOccurred()
                        print("Pressed")
                        if (going){
                            if (word[curLine].count < 5) {
                                word[curLine].append("B")
                            }
                        }
                        
                    }) {
                        ZStack{
                            RoundedRectangle(cornerRadius: 4)
                            .foregroundColor(colors["B"] ?? Color(.systemGray))
                            Text("B")
                                .foregroundColor(.white)
                        }
                            
                    }
                    Button(action: {
                        let generator = UIImpactFeedbackGenerator(style: .light)
                                    generator.impactOccurred()
                        print("Pressed")
                        if (going){
                            if (word[curLine].count < 5) {
                                word[curLine].append("N")
                            }
                        }
                        
                    }) {
                        ZStack{
                            RoundedRectangle(cornerRadius: 4)
                            .foregroundColor(colors["N"] ?? Color(.systemGray))
                            Text("N")
                                .foregroundColor(.white)
                        }
                            
                    }
                    Button(action: {
                        let generator = UIImpactFeedbackGenerator(style: .light)
                                    generator.impactOccurred()
                        print("Pressed")
                        if (going){
                            if (word[curLine].count < 5) {
                                word[curLine].append("M")
                            }
                        }
                        
                    }) {
                        ZStack{
                            RoundedRectangle(cornerRadius: 4)
                            .foregroundColor(colors["M"] ?? Color(.systemGray))
                            Text("M")
                                .foregroundColor(.white)
                        }
                            
                    }
                    Button(action: {
                        let generator = UIImpactFeedbackGenerator(style: .light)
                                    generator.impactOccurred()
                        print("Pressed")
                        if (word[curLine].count > 0){
                            word[curLine].removeLast()
                        }
                        
                        
                    }) {
                        ZStack{
                            RoundedRectangle(cornerRadius: 4)
                            .foregroundColor(Color(.systemGray))
                            Image(systemName: "delete.left")
                                .foregroundColor(.white)
                        }
                            
                    }
                    RoundedRectangle(cornerRadius: 4)
                    .foregroundColor(Color(.systemGray))
                    .opacity(0.0)
                    

                }.padding(.horizontal, 10)
                
                
            }
            
        }
       
    }
}

struct Keyboard_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
