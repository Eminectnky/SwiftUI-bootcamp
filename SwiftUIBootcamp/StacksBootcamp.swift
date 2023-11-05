//
//  StacksBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Emine CETINKAYA on 2.10.2023.
//

import SwiftUI

struct StacksBootcamp: View {
    var body: some View {
//        VStacks -> Vertical
//        HStacks -> Horizontal
//        ZStacks -> zIndex(back to front)
        
        
        VStack(spacing: 50){
            
            ZStack{
                
                Circle()
                    .frame(width: 100, height: 100)
                Text("1")
                    .foregroundColor(.white)
                    .font(.largeTitle)
            }
            
            Text("1")
                .foregroundColor(.blue)
                .font(.largeTitle)
                .background(
                
                    Circle()
                        .frame(width: 100, height: 100)
                    
                )
        }
        
      
//        VStack(alignment:.center, spacing: 20){
//            Text("5")
//                .underline()
//            Text("Items in your cart")
//                .font(.caption)
//                .foregroundColor(.gray)
//
//                .font(.largeTitle)
//        }
//
//        ZStack(alignment: .top){
//
//            Rectangle()
//                .fill(Color.yellow)
//                .frame(width: 350, height: 500, alignment: .center)
//
//            VStack(alignment: .leading, spacing: 30){
//                Rectangle()
//                    .fill(Color.purple)
//                    .frame(width: 150, height: 150)
//
//                Rectangle()
//                    .fill(Color.pink)
//                    .frame(width: 100, height: 100)
//
//                HStack(alignment: .bottom) {
//                    Rectangle()
//                        .fill(Color.green)
//                    .frame(width: 50, height: 50)
//
//                    Rectangle()
//                        .fill(Color.orange)
//                    .frame(width: 75, height: 75)
//
//                    Rectangle()
//                        .fill(Color.blue)
//                    .frame(width: 25, height: 25)
//                }.background(Color.white)
//            }.background(Color.black)
//        }
        
        
//
//        ZStack(alignment:.topTrailing,  content: {
//
//            Rectangle()
//                .fill(Color.red)
//                .frame(width: 200, height: 200)
//
//
//            Rectangle()
//                .fill(Color.blue)
//                .frame(width: 150, height: 150)
//
//            Rectangle()
//                .fill(Color.green)
//                .frame(width: 100, height: 100)
//
//        })
    }
}

struct StacksBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        StacksBootcamp()
    }
}
