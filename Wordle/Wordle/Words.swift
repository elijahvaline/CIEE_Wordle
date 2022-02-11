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
    
    var body: some View {
        VStack{
            HStack{
                ZStack{
                    Rectangle()
                        .aspectRatio(1.0, contentMode: .fit)
                        .border(Color(.systemGray3))
                        .foregroundColor(Color("BackgroundBlack"))
                    
                    if(word[0].count >= 1){
                        Text(String(word[0][0]))
                            .font(.title)
                            .foregroundColor(.white)
                    }
                }
                
                ZStack{
                    Rectangle()
                        .aspectRatio(1.0, contentMode: .fit)
                        .border(Color(.systemGray3))
                        .foregroundColor(Color("BackgroundBlack"))
                    
                    if(word[0].count >= 2){
                        Text(String(word[0][1]))
                            .font(.title)
                            .foregroundColor(.white)
                    }
                }
                ZStack{
                    Rectangle()
                        .aspectRatio(1.0, contentMode: .fit)
                        .border(Color(.systemGray3))
                        .foregroundColor(Color("BackgroundBlack"))
                    
                    if(word[0].count >= 3){
                        Text(String(word[0][2]))
                            .font(.title)
                            .foregroundColor(.white)
                    }
                }
                ZStack{
                    Rectangle()
                        .aspectRatio(1.0, contentMode: .fit)
                        .border(Color(.systemGray3))
                        .foregroundColor(Color("BackgroundBlack"))
                    
                    if(word[0].count >= 4){
                        Text(String(word[0][3]))
                            .font(.title)
                            .foregroundColor(.white)
                    }
                }
                ZStack{
                    Rectangle()
                        .aspectRatio(1.0, contentMode: .fit)
                        .border(Color(.systemGray3))
                        .foregroundColor(Color("BackgroundBlack"))
                    
                    if(word[0].count >= 5){
                        Text(String(word[0][4]))
                            .font(.title)
                            .foregroundColor(.white)
                    }
                }
            }
            
            HStack{
                ZStack{
                    Rectangle()
                        .aspectRatio(1.0, contentMode: .fit)
                        .border(Color(.systemGray3))
                        .foregroundColor(Color("BackgroundBlack"))
                    
                    if(word[1].count >= 1){
                        Text(String(word[1][0]))
                            .font(.title)
                            .foregroundColor(.white)
                    }
                }
                
                ZStack{
                    Rectangle()
                        .aspectRatio(1.0, contentMode: .fit)
                        .border(Color(.systemGray3))
                        .foregroundColor(Color("BackgroundBlack"))
                    
                    if(word[1].count >= 2){
                        Text(String(word[1][1]))
                            .font(.title)
                            .foregroundColor(.white)
                    }
                }
                ZStack{
                    Rectangle()
                        .aspectRatio(1.0, contentMode: .fit)
                        .border(Color(.systemGray3))
                        .foregroundColor(Color("BackgroundBlack"))
                    
                    if(word[1].count >= 3){
                        Text(String(word[1][2]))
                            .font(.title)
                            .foregroundColor(.white)
                    }
                }
                ZStack{
                    Rectangle()
                        .aspectRatio(1.0, contentMode: .fit)
                        .border(Color(.systemGray3))
                        .foregroundColor(Color("BackgroundBlack"))
                    
                    if(word[1].count >= 4){
                        Text(String(word[1][3]))
                            .font(.title)
                            .foregroundColor(.white)
                    }
                }
                ZStack{
                    Rectangle()
                        .aspectRatio(1.0, contentMode: .fit)
                        .border(Color(.systemGray3))
                        .foregroundColor(Color("BackgroundBlack"))
                    
                    if(word[1].count >= 5){
                        Text(String(word[1][4]))
                            .font(.title)
                            .foregroundColor(.white)
                    }
                }
            }
            
            HStack{
                ZStack{
                    Rectangle()
                        .aspectRatio(1.0, contentMode: .fit)
                        .border(Color(.systemGray3))
                        .foregroundColor(Color("BackgroundBlack"))
                    
                    if(word[2].count >= 1){
                        Text(String(word[2][0]))
                            .font(.title)
                            .foregroundColor(.white)
                    }
                }
                
                ZStack{
                    Rectangle()
                        .aspectRatio(1.0, contentMode: .fit)
                        .border(Color(.systemGray3))
                        .foregroundColor(Color("BackgroundBlack"))
                    
                    if(word[2].count >= 2){
                        Text(String(word[2][1]))
                            .font(.title)
                            .foregroundColor(.white)
                    }
                }
                ZStack{
                    Rectangle()
                        .aspectRatio(1.0, contentMode: .fit)
                        .border(Color(.systemGray3))
                        .foregroundColor(Color("BackgroundBlack"))
                    
                    if(word[2].count >= 3){
                        Text(String(word[2][2]))
                            .font(.title)
                            .foregroundColor(.white)
                    }
                }
                ZStack{
                    Rectangle()
                        .aspectRatio(1.0, contentMode: .fit)
                        .border(Color(.systemGray3))
                        .foregroundColor(Color("BackgroundBlack"))
                    
                    if(word[2].count >= 4){
                        Text(String(word[2][3]))
                            .font(.title)
                            .foregroundColor(.white)
                    }
                }
                ZStack{
                    Rectangle()
                        .aspectRatio(1.0, contentMode: .fit)
                        .border(Color(.systemGray3))
                        .foregroundColor(Color("BackgroundBlack"))
                    
                    if(word[2].count >= 5){
                        Text(String(word[2][4]))
                            .font(.title)
                            .foregroundColor(.white)
                    }
                }
            }
            
            HStack{
                ZStack{
                    Rectangle()
                        .aspectRatio(1.0, contentMode: .fit)
                        .border(Color(.systemGray3))
                        .foregroundColor(Color("BackgroundBlack"))
                    
                    if(word[3].count >= 1){
                        Text(String(word[3][0]))
                            .font(.title)
                            .foregroundColor(.white)
                    }
                }
                
                ZStack{
                    Rectangle()
                        .aspectRatio(1.0, contentMode: .fit)
                        .border(Color(.systemGray3))
                        .foregroundColor(Color("BackgroundBlack"))
                    
                    if(word[3].count >= 2){
                        Text(String(word[3][1]))
                            .font(.title)
                            .foregroundColor(.white)
                    }
                }
                ZStack{
                    Rectangle()
                        .aspectRatio(1.0, contentMode: .fit)
                        .border(Color(.systemGray3))
                        .foregroundColor(Color("BackgroundBlack"))
                    
                    if(word[3].count >= 3){
                        Text(String(word[3][2]))
                            .font(.title)
                            .foregroundColor(.white)
                    }
                }
                ZStack{
                    Rectangle()
                        .aspectRatio(1.0, contentMode: .fit)
                        .border(Color(.systemGray3))
                        .foregroundColor(Color("BackgroundBlack"))
                    
                    if(word[3].count >= 4){
                        Text(String(word[3][3]))
                            .font(.title)
                            .foregroundColor(.white)
                    }
                }
                ZStack{
                    Rectangle()
                        .aspectRatio(1.0, contentMode: .fit)
                        .border(Color(.systemGray3))
                        .foregroundColor(Color("BackgroundBlack"))
                    
                    if(word[3].count >= 5){
                        Text(String(word[3][4]))
                            .font(.title)
                            .foregroundColor(.white)
                    }
                }
            }
            
            HStack{
                ZStack{
                    Rectangle()
                        .aspectRatio(1.0, contentMode: .fit)
                        .border(Color(.systemGray3))
                        .foregroundColor(Color("BackgroundBlack"))
                    
                    if(word[4].count >= 1){
                        Text(String(word[4][0]))
                            .font(.title)
                            .foregroundColor(.white)
                    }
                }
                
                ZStack{
                    Rectangle()
                        .aspectRatio(1.0, contentMode: .fit)
                        .border(Color(.systemGray3))
                        .foregroundColor(Color("BackgroundBlack"))
                    
                    if(word[4].count >= 2){
                        Text(String(word[4][1]))
                            .font(.title)
                            .foregroundColor(.white)
                    }
                }
                ZStack{
                    Rectangle()
                        .aspectRatio(1.0, contentMode: .fit)
                        .border(Color(.systemGray3))
                        .foregroundColor(Color("BackgroundBlack"))
                    
                    if(word[4].count >= 3){
                        Text(String(word[4][2]))
                            .font(.title)
                            .foregroundColor(.white)
                    }
                }
                ZStack{
                    Rectangle()
                        .aspectRatio(1.0, contentMode: .fit)
                        .border(Color(.systemGray3))
                        .foregroundColor(Color("BackgroundBlack"))
                    
                    if(word[4].count >= 4){
                        Text(String(word[4][3]))
                            .font(.title)
                            .foregroundColor(.white)
                    }
                }
                ZStack{
                    Rectangle()
                        .aspectRatio(1.0, contentMode: .fit)
                        .border(Color(.systemGray3))
                        .foregroundColor(Color("BackgroundBlack"))
                    
                    if(word[4].count >= 5){
                        Text(String(word[4][4]))
                            .font(.title)
                            .foregroundColor(.white)
                    }
                }
            }
            
            HStack{
                ZStack{
                    Rectangle()
                        .aspectRatio(1.0, contentMode: .fit)
                        .border(Color(.systemGray3))
                        .foregroundColor(Color("BackgroundBlack"))
                    
                    if(word[5].count >= 1){
                        Text(String(word[5][0]))
                            .font(.title)
                            .foregroundColor(.white)
                    }
                }
                
                ZStack{
                    Rectangle()
                        .aspectRatio(1.0, contentMode: .fit)
                        .border(Color(.systemGray3))
                        .foregroundColor(Color("BackgroundBlack"))
                    
                    if(word[5].count >= 2){
                        Text(String(word[5][1]))
                            .font(.title)
                            .foregroundColor(.white)
                    }
                }
                ZStack{
                    Rectangle()
                        .aspectRatio(1.0, contentMode: .fit)
                        .border(Color(.systemGray3))
                        .foregroundColor(Color("BackgroundBlack"))
                    
                    if(word[5].count >= 3){
                        Text(String(word[5][2]))
                            .font(.title)
                            .foregroundColor(.white)
                    }
                }
                ZStack{
                    Rectangle()
                        .aspectRatio(1.0, contentMode: .fit)
                        .border(Color(.systemGray3))
                        .foregroundColor(Color("BackgroundBlack"))
                    
                    if(word[5].count >= 4){
                        Text(String(word[5][3]))
                            .font(.title)
                            .foregroundColor(.white)
                    }
                }
                ZStack{
                    Rectangle()
                        .aspectRatio(1.0, contentMode: .fit)
                        .border(Color(.systemGray3))
                        .foregroundColor(Color("BackgroundBlack"))
                    
                    if(word[5].count >= 5){
                        Text(String(word[5][4]))
                            .font(.title)
                            .foregroundColor(.white)
                    }
                }
            }
        }
        
    }
}

