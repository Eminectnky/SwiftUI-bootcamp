//
//  PaddingAndSpacerBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Emine CETINKAYA on 2.10.2023.
//

import SwiftUI

struct PaddingAndSpacerBootcamp: View {
    var body: some View {
        VStack(alignment: .leading) {
            Text("Hello World!")
    //            .background(Color.yellow)
    //            .padding()
    //            .padding(.all, 10)
    //            .padding(.leading, 20)
    //            .frame(width: 300, height: 100)
    //            .background(Color.blue)
            
                .font(.largeTitle)
            .fontWeight(.semibold)
            .padding(.bottom, 20)
            
            
            Text("This is the description of what we will do on this screen. It is multiple lines and we will align the text to the leading edge.")
                .multilineTextAlignment(.leading)
        }
//        .background(Color.blue)
        .padding()
        .padding(.vertical, 30)
//        .background(Color.red)
        .background(
            Color.white
                .cornerRadius(10))
        .shadow(
            color:Color.black .opacity(0.3), radius: 10,
            x:0.0, y:10)
             
        
        
        
//        .background(Color.green)
//        .padding(.horizontal, 10)
        
//        .background(Color.gray)
//            .frame(maxWidth: .infinity, alignment: .leading)
//            .background(Color.red)
//            .padding(.leading, 20)
    }
}

struct PaddingAndSpacerBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        PaddingAndSpacerBootcamp()
    }
}
