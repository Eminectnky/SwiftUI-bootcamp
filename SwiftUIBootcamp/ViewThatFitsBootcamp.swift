//
//  ViewThatFitsBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Emine CETINKAYA on 28.01.2024.
//

import SwiftUI

struct ViewThatFitsBootcamp: View {
    var body: some View {
        ZStack{
            Color.red.ignoresSafeArea()
            
            ViewThatFits {
                Text("This is some text that I would like to display to the user!")
                Text("This is some text that I would like to display!")
                Text("This is some text!")
            }
            
          
//                .lineLimit(1) // metnin sahip olacağı satır sayısı
                .minimumScaleFactor(0.3) // metni orijinal boyutunun %30 una kadar küçülttük
        }
        .frame(height: 300)
        .padding(50)
        .font(.headline)
    }
    
}

#Preview {
    ViewThatFitsBootcamp()
}
