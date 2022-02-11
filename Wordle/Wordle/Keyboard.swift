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



struct SimpleButtonStyle: ButtonStyle {
    func makeBody(configuration: Self.Configuration) -> some View {
        configuration.label
            .padding(30)
            .contentShape(Circle())
            .background(
                Group {
                    if configuration.isPressed {
                        Circle()
                            .fill(Color.offWhite)
                            .overlay(
                                Circle()
                                    .stroke(Color.gray, lineWidth: 4)
                                    .blur(radius: 4)
                                    .offset(x: 2, y: 2)
                                    .mask(Circle().fill(LinearGradient(Color.black, Color.clear)))
                            )
                            .overlay(
                                Circle()
                                    .stroke(Color.white, lineWidth: 8)
                                    .blur(radius: 4)
                                    .offset(x: -2, y: -2)
                                    .mask(Circle().fill(LinearGradient(Color.clear, Color.black)))
                            )
                    } else {
                        Circle()
                            .fill(Color.offWhite)
                            .shadow(color: Color.black.opacity(0.2), radius: 10, x: 10, y: 10)
                            .shadow(color: Color.white.opacity(0.7), radius: 10, x: -5, y: -5)
                    }
                }
            )
    }
}



struct ColorfulBackground<S: Shape>: View {
    var isHighlighted: Bool
    var shape: S

    var body: some View {
        ZStack {
            if isHighlighted {
                shape
                    .fill(LinearGradient(Color.lightEnd, Color.lightStart))
                    .overlay(shape.stroke(LinearGradient(Color.lightStart, Color.lightEnd), lineWidth: 4))
                    .shadow(color: Color.darkStart, radius: 10, x: 5, y: 5)
                    .shadow(color: Color.darkEnd, radius: 10, x: -5, y: -5)
            } else {
                shape
                    .fill(LinearGradient(Color.darkStart, Color.darkEnd))
                    .overlay(shape.stroke(LinearGradient(Color.lightStart, Color.lightEnd), lineWidth: 4))
                    .shadow(color: Color.darkStart, radius: 10, x: -10, y: -10)
                    .shadow(color: Color.darkEnd, radius: 10, x: 10, y: 10)
            }
        }
    }
}


struct ColorfulButtonStyle: ButtonStyle {
    func makeBody(configuration: Self.Configuration) -> some View {
        configuration.label
            .padding(30)
            .contentShape(Circle())
            .background(
                ColorfulBackground(isHighlighted: configuration.isPressed, shape: Circle())
            )
            .animation(nil)
    }
}

struct ColorfulToggleStyle: ToggleStyle {
    func makeBody(configuration: Self.Configuration) -> some View {
        Button(action: {
            configuration.isOn.toggle()
        }) {
            configuration.label
                .padding(30)
                .contentShape(Circle())
        }
        .background(
            ColorfulBackground(isHighlighted: configuration.isOn, shape: Circle())
        )
    }
}

struct Keyboard: View {
    @State private var isToggled = false
    @Binding var word: [[Character]]
    @State var curIndex:Int
    @Binding var curLine:Int
    @Binding var going:Bool
    
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
                            .foregroundColor(Color(.systemGray))
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
                            .foregroundColor(Color(.systemGray))
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
                            .foregroundColor(Color(.systemGray))
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
                            .foregroundColor(Color(.systemGray))
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
                            .foregroundColor(Color(.systemGray))
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
                            .foregroundColor(Color(.systemGray))
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
                            .foregroundColor(Color(.systemGray))
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
                            .foregroundColor(Color(.systemGray))
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
                            .foregroundColor(Color(.systemGray))
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
                            .foregroundColor(Color(.systemGray))
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
                            .foregroundColor(Color(.systemGray))
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
                            .foregroundColor(Color(.systemGray))
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
                            .foregroundColor(Color(.systemGray))
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
                            .foregroundColor(Color(.systemGray))
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
                            .foregroundColor(Color(.systemGray))
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
                            .foregroundColor(Color(.systemGray))
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
                            .foregroundColor(Color(.systemGray))
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
                            .foregroundColor(Color(.systemGray))
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
                                word[curLine].append("Ñ")
                            }
                        }
                        
                    }) {
                        ZStack{
                            RoundedRectangle(cornerRadius: 4)
                            .foregroundColor(Color(.systemGray))
                            Text("Ñ")
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
                            .foregroundColor(Color(.systemGray))
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
                            .foregroundColor(Color(.systemGray))
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
                            .foregroundColor(Color(.systemGray))
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
                            .foregroundColor(Color(.systemGray))
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
                            .foregroundColor(Color(.systemGray))
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
                            .foregroundColor(Color(.systemGray))
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
                            .foregroundColor(Color(.systemGray))
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
