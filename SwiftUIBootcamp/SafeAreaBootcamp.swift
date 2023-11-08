//
//  SafeAreaBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Emine CETINKAYA on 8.11.2023.
//

import SwiftUI

struct SafeAreaBootcamp: View {
    var body: some View {
        
       
            
            ScrollView{
                VStack {
                    Text("Title goes here")
                        .font(.largeTitle)
                        .frame(maxWidth: .infinity, alignment: .leading)
                    
                    ForEach(0..<10) { index in
                        RoundedRectangle(cornerRadius: 25.0)
                            .fill(Color.white)
                            .frame(height: 150)
                            .shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
                            .padding(20)
                    }
                }
            }
//            .background(Color.blue)
.background(
    Color.red
//        .edgesIgnoringSafeArea(.all) //old
        .ignoresSafeArea(edges: .top)
)

        
       
        
        //        ZStack {
//
//            //background
//            Color.blue
//                .edgesIgnoringSafeArea(.all)
//            
//        //foreground
//            
//            VStack {
//                Text(/*@START_MENU_TOKEN@"Hello, World!"/*@END_MENU_TOKEN@*/)
//                    Spacer()
//            }
//            .frame(maxWidth: .infinity, maxHeight: .infinity)
//            .background(Color.red)
//     
//        }
        
        
    }
}

#Preview {
    SafeAreaBootcamp()
}
