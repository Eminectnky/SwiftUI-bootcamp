//
//  StateBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Emine CETINKAYA on 9.11.2023.
//

import SwiftUI

struct StateBootcamp: View {
    
    @State var backgroundColor: Color = Color.green
    @State var myTitle: String = "My Title"
    @State var count: Int = 0
    
    var body: some View {
        ZStack{
            
//            background
            backgroundColor
         .edgesIgnoringSafeArea(.all)
            
            VStack(spacing: 20){
                Text(myTitle)
                    .font(.title)
                Text("Count: \(count)")
                    .font(.headline)
                    .underline()
                
                HStack(spacing: 20)
                {
                    Button("BUTTON 1"){
                        backgroundColor = .red
                        myTitle = "BUTTON 1 was pressed"
                        count += 1
                        
                        
                    }
                    
                    Button("Button 2 ") {
                        backgroundColor = .orange
                        myTitle = "BUTTON 2 was pressed"
                        count -= 1
                        
                        
                    }
                }
              
            }
            .foregroundColor(.white)
            
            
        }
    }
}

#Preview {
    StateBootcamp()
}

