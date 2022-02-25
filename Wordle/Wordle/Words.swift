//
//  Words.swift
//  Wordle
//
//  Created by Elijah Valine on 2/8/22.
//

import SwiftUI

//public func aspectRatio(_ aspectRatio: CGFloat? = nil,
//                        contentMode: ContentMode) -> some View

struct Words: View {
    
    @Binding var word: [[Character]]
    @State var curIndex:Int
    @Binding var curLine:Int
    @Binding var scale:[[Double]]
    @Binding var colors:[[Color]]
    
    var body: some View {
        VStack{
            HStack{
                ZStack{
                    Rectangle()
                        .aspectRatio(1.0, contentMode: .fit)
                        .border(Color(.systemGray3))
                        .foregroundColor(colors[0][0])
                        .scaleEffect(y:scale[0][0])
                    
                    if(word[0].count >= 1){
                        Text(String(word[0][0]))
                            .font(.title)
                            .foregroundColor(.white)
                            .scaleEffect(y:scale[0][0])
                            
                    }
                }
                
                ZStack{
                    Rectangle()
                        .aspectRatio(1.0, contentMode: .fit)
                        .border(Color(.systemGray3))
                        .foregroundColor(colors[0][1])
                        .scaleEffect(y:scale[0][1])
                    
                    if(word[0].count >= 2){
                        Text(String(word[0][1]))
                            .font(.title)
                            .foregroundColor(.white)
                            .scaleEffect(y:scale[0][1])
                    }
                }
                ZStack{
                    Rectangle()
                        .aspectRatio(1.0, contentMode: .fit)
                        .border(Color(.systemGray3))
                        .foregroundColor(colors[0][2])
                        .scaleEffect(y:scale[0][2])
                    
                    if(word[0].count >= 3){
                        Text(String(word[0][2]))
                            .font(.title)
                            .foregroundColor(.white)
                            .scaleEffect(y:scale[0][2])
                    }
                }
                ZStack{
                    Rectangle()
                        .aspectRatio(1.0, contentMode: .fit)
                        .border(Color(.systemGray3))
                        .foregroundColor(colors[0][3])
                        .scaleEffect(y:scale[0][3])
                    
                    if(word[0].count >= 4){
                        Text(String(word[0][3]))
                            .font(.title)
                            .foregroundColor(.white)
                            .scaleEffect(y:scale[0][3])
                    }
                }
                ZStack{
                    Rectangle()
                        .aspectRatio(1.0, contentMode: .fit)
                        .border(Color(.systemGray3))
                        .foregroundColor(colors[0][4])
                        .scaleEffect(y:scale[0][4])
                    
                    if(word[0].count >= 5){
                        Text(String(word[0][4]))
                            .font(.title)
                            .foregroundColor(.white)
                            .scaleEffect(y:scale[0][4])
                    }
                }
            }
            
            HStack{
                ZStack{
                    Rectangle()
                        .aspectRatio(1.0, contentMode: .fit)
                        .border(Color(.systemGray3))
                        .foregroundColor(colors[1][0])
                        .scaleEffect(y:scale[1][0])
                    
                    if(word[1].count >= 1){
                        Text(String(word[1][0]))
                            .font(.title)
                            .foregroundColor(.white)
                            .scaleEffect(y:scale[1][0])
                    }
                }
                
                ZStack{
                    Rectangle()
                        .aspectRatio(1.0, contentMode: .fit)
                        .border(Color(.systemGray3))
                        .foregroundColor(colors[1][1])
                        .scaleEffect(y:scale[1][1])
                    
                    if(word[1].count >= 2){
                        Text(String(word[1][1]))
                            .font(.title)
                            .foregroundColor(.white)
                            .scaleEffect(y:scale[1][1])
                    }
                }
                ZStack{
                    Rectangle()
                        .aspectRatio(1.0, contentMode: .fit)
                        .border(Color(.systemGray3))
                        .foregroundColor(colors[1][2])
                        .scaleEffect(y:scale[1][2])
                    
                    if(word[1].count >= 3){
                        Text(String(word[1][2]))
                            .font(.title)
                            .foregroundColor(.white)
                            .scaleEffect(y:scale[1][2])
                    }
                }
                ZStack{
                    Rectangle()
                        .aspectRatio(1.0, contentMode: .fit)
                        .border(Color(.systemGray3))
                        .foregroundColor(colors[1][3])
                        .scaleEffect(y:scale[1][3])
                    
                    if(word[1].count >= 4){
                        Text(String(word[1][3]))
                            .font(.title)
                            .foregroundColor(.white)
                            .scaleEffect(y:scale[1][3])
                    }
                }
                ZStack{
                    Rectangle()
                        .aspectRatio(1.0, contentMode: .fit)
                        .border(Color(.systemGray3))
                        .foregroundColor(colors[1][4])
                        .scaleEffect(y:scale[1][4])
                    
                    if(word[1].count >= 5){
                        Text(String(word[1][4]))
                            .font(.title)
                            .foregroundColor(.white)
                            .scaleEffect(y:scale[1][4])
                    }
                }
            }
            
            HStack{
                ZStack{
                    Rectangle()
                        .aspectRatio(1.0, contentMode: .fit)
                        .border(Color(.systemGray3))
                        .foregroundColor(colors[2][0])
                        .scaleEffect(y:scale[2][0])
                    
                    if(word[2].count >= 1){
                        Text(String(word[2][0]))
                            .font(.title)
                            .foregroundColor(.white)
                            .scaleEffect(y:scale[2][0])
                    }
                }
                
                ZStack{
                    Rectangle()
                        .aspectRatio(1.0, contentMode: .fit)
                        .border(Color(.systemGray3))
                        .foregroundColor(colors[2][1])
                        .scaleEffect(y:scale[2][1])
                    
                    if(word[2].count >= 2){
                        Text(String(word[2][1]))
                            .font(.title)
                            .foregroundColor(.white)
                            .scaleEffect(y:scale[2][1])
                    }
                }
                ZStack{
                    Rectangle()
                        .aspectRatio(1.0, contentMode: .fit)
                        .border(Color(.systemGray3))
                        .foregroundColor(colors[2][2])
                        .scaleEffect(y:scale[2][2])
                    
                    if(word[2].count >= 3){
                        Text(String(word[2][2]))
                            .font(.title)
                            .foregroundColor(.white)
                            .scaleEffect(y:scale[2][2])
                    }
                }
                ZStack{
                    Rectangle()
                        .aspectRatio(1.0, contentMode: .fit)
                        .border(Color(.systemGray3))
                        .foregroundColor(colors[2][3])
                        .scaleEffect(y:scale[2][3])
                    
                    if(word[2].count >= 4){
                        Text(String(word[2][3]))
                            .font(.title)
                            .foregroundColor(.white)
                            .scaleEffect(y:scale[2][3])
                    }
                }
                ZStack{
                    Rectangle()
                        .aspectRatio(1.0, contentMode: .fit)
                        .border(Color(.systemGray3))
                        .foregroundColor(colors[2][4])
                        .scaleEffect(y:scale[2][4])
                    
                    if(word[2].count >= 5){
                        Text(String(word[2][4]))
                            .font(.title)
                            .foregroundColor(.white)
                            .scaleEffect(y:scale[2][4])
                    }
                }
            }
            
            HStack{
                ZStack{
                    Rectangle()
                        .aspectRatio(1.0, contentMode: .fit)
                        .border(Color(.systemGray3))
                        .foregroundColor(colors[3][0])
                        .scaleEffect(y:scale[3][0])
                    
                    if(word[3].count >= 1){
                        Text(String(word[3][0]))
                            .font(.title)
                            .foregroundColor(.white)
                            .scaleEffect(y:scale[3][0])
                    }
                }
                
                ZStack{
                    Rectangle()
                        .aspectRatio(1.0, contentMode: .fit)
                        .border(Color(.systemGray3))
                        .foregroundColor(colors[3][1])
                        .scaleEffect(y:scale[3][1])
                    
                    if(word[3].count >= 2){
                        Text(String(word[3][1]))
                            .font(.title)
                            .foregroundColor(.white)
                            .scaleEffect(y:scale[3][1])
                    }
                }
                ZStack{
                    Rectangle()
                        .aspectRatio(1.0, contentMode: .fit)
                        .border(Color(.systemGray3))
                        .foregroundColor(colors[3][2])
                        .scaleEffect(y:scale[3][2])
                    
                    if(word[3].count >= 3){
                        Text(String(word[3][2]))
                            .font(.title)
                            .foregroundColor(.white)
                            .scaleEffect(y:scale[3][2])
                    }
                }
                ZStack{
                    Rectangle()
                        .aspectRatio(1.0, contentMode: .fit)
                        .border(Color(.systemGray3))
                        .foregroundColor(colors[3][3])
                        .scaleEffect(y:scale[3][3])
                    
                    if(word[3].count >= 4){
                        Text(String(word[3][3]))
                            .font(.title)
                            .foregroundColor(.white)
                            .scaleEffect(y:scale[3][3])
                    }
                }
                ZStack{
                    Rectangle()
                        .aspectRatio(1.0, contentMode: .fit)
                        .border(Color(.systemGray3))
                        .foregroundColor(colors[3][4])
                        .scaleEffect(y:scale[3][4])
                    
                    if(word[3].count >= 5){
                        Text(String(word[3][4]))
                            .font(.title)
                            .foregroundColor(.white)
                            .scaleEffect(y:scale[3][4])
                    }
                }
            }
            
            HStack{
                ZStack{
                    Rectangle()
                        .aspectRatio(1.0, contentMode: .fit)
                        .border(Color(.systemGray3))
                        .foregroundColor(colors[4][0])
                        .scaleEffect(y:scale[4][0])
                    
                    if(word[4].count >= 1){
                        Text(String(word[4][0]))
                            .font(.title)
                            .foregroundColor(.white)
                            .scaleEffect(y:scale[4][0])
                    }
                }
                
                ZStack{
                    Rectangle()
                        .aspectRatio(1.0, contentMode: .fit)
                        .border(Color(.systemGray3))
                        .foregroundColor(colors[4][1])
                        .scaleEffect(y:scale[4][1])
                    
                    if(word[4].count >= 2){
                        Text(String(word[4][1]))
                            .font(.title)
                            .foregroundColor(.white)
                            .scaleEffect(y:scale[4][1])
                    }
                }
                ZStack{
                    Rectangle()
                        .aspectRatio(1.0, contentMode: .fit)
                        .border(Color(.systemGray3))
                        .foregroundColor(colors[4][2])
                        .scaleEffect(y:scale[4][2])
                    
                    if(word[4].count >= 3){
                        Text(String(word[4][2]))
                            .font(.title)
                            .foregroundColor(.white)
                            .scaleEffect(y:scale[4][2])
                    }
                }
                ZStack{
                    Rectangle()
                        .aspectRatio(1.0, contentMode: .fit)
                        .border(Color(.systemGray3))
                        .foregroundColor(colors[4][3])
                        .scaleEffect(y:scale[4][3])
                    
                    if(word[4].count >= 4){
                        Text(String(word[4][3]))
                            .font(.title)
                            .foregroundColor(.white)
                            .scaleEffect(y:scale[4][3])
                    }
                }
                ZStack{
                    Rectangle()
                        .aspectRatio(1.0, contentMode: .fit)
                        .border(Color(.systemGray3))
                        .foregroundColor(colors[4][4])
                        .scaleEffect(y:scale[4][4])
                    
                    if(word[4].count >= 5){
                        Text(String(word[4][4]))
                            .font(.title)
                            .foregroundColor(.white)
                            .scaleEffect(y:scale[4][4])
                    }
                }
            }
            
            HStack{
                ZStack{
                    Rectangle()
                        .aspectRatio(1.0, contentMode: .fit)
                        .border(Color(.systemGray3))
                        .foregroundColor(colors[5][0])
                        .scaleEffect(y:scale[5][0])
                    
                    if(word[5].count >= 1){
                        Text(String(word[5][0]))
                            .font(.title)
                            .foregroundColor(.white)
                            .scaleEffect(y:scale[5][0])
                    }
                }
                
                ZStack{
                    Rectangle()
                        .aspectRatio(1.0, contentMode: .fit)
                        .border(Color(.systemGray3))
                        .foregroundColor(colors[5][1])
                        .scaleEffect(y:scale[5][1])
                    
                    if(word[5].count >= 2){
                        Text(String(word[5][1]))
                            .font(.title)
                            .foregroundColor(.white)
                            .scaleEffect(y:scale[5][1])
                    }
                }
                ZStack{
                    Rectangle()
                        .aspectRatio(1.0, contentMode: .fit)
                        .border(Color(.systemGray3))
                        .foregroundColor(colors[5][2])
                        .scaleEffect(y:scale[5][2])
                    
                    if(word[5].count >= 3){
                        Text(String(word[5][2]))
                            .font(.title)
                            .foregroundColor(.white)
                            .scaleEffect(y:scale[5][2])
                    }
                }
                ZStack{
                    Rectangle()
                        .aspectRatio(1.0, contentMode: .fit)
                        .border(Color(.systemGray3))
                        .foregroundColor(colors[5][3])
                        .scaleEffect(y:scale[5][3])
                    
                    if(word[5].count >= 4){
                        Text(String(word[5][3]))
                            .font(.title)
                            .foregroundColor(.white)
                            .scaleEffect(y:scale[5][3])
                    }
                }
                ZStack{
                    Rectangle()
                        .aspectRatio(1.0, contentMode: .fit)
                        .border(Color(.systemGray3))
                        .foregroundColor(colors[5][4])
                        .scaleEffect(y:scale[5][4])
                    
                    if(word[5].count >= 5){
                        Text(String(word[5][4]))
                            .font(.title)
                            .foregroundColor(.white)
                            .scaleEffect(y:scale[5][4])
                    }
                }
            }
        }
        
    }
}

