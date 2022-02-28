//
//  Loading.swift
//  Wordle
//
//  Created by Elijah Valine on 2/28/22.
//

import SwiftUI

struct Loading: View {
    
    @Binding var scale:Double
    @Binding var rotation:Double
    
    var body: some View {
        ZStack{
            Color("BackgroundBlack").ignoresSafeArea(.all)
            
            Image("launch")
                .scaleEffect(scale)
                .rotationEffect(.degrees(rotation))
        }
        
        
    }
}

