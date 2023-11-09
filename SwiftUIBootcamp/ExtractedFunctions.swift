//
//  ExtractedFunctions.swift
//  SwiftUIBootcamp
//
//  Created by Emine CETINKAYA on 9.11.2023.
//

import SwiftUI

struct ExtractedFunctions: View {
    
    @State var  backgroundColor: Color = Color.pink
    
    var body: some View {
        ZStack{
//            background
            backgroundColor.edgesIgnoringSafeArea(.all)
            
//            content
            contentLayer
          
        }
    }
    
    var contentLayer: some View {
        VStack{
            Text("Title")
                .font(.largeTitle)
            Button (action: {
                buttonPressed()
                
                
            }, label: {
                Text("PRESS ME")
                    .foregroundColor(.white)
                    .padding()
                    .background(Color.black)
                    .cornerRadius(10)
                
            })

        }
    }
    
    func buttonPressed(){
        backgroundColor = .yellow
    }
   
}

#Preview {
    ExtractedFunctions()
}
