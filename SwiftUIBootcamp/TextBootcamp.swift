//
//  TextBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Emine CETINKAYA on 4.09.2023.
//

import SwiftUI

struct TextBootcamp: View {
    var body: some View {
        Text("Hello, World! This is the SwiftUI Bootcamp. I am really enjoying this course and learning alot.")
//            .font(.title)
//            .fontWeight(.semibold)
//            .bold()
//            .underline()
//            .underline(color: .red)
//            .italic()
//            .strikethrough(color: .red)
//            .font(.system(size: 24, weight: .semibold, design: .serif))
//            .baselineOffset(10.0)
//            .kerning(1.0)
            .multilineTextAlignment(.leading)
            .foregroundColor(Color.purple)
            .frame(width: 200, height: 100, alignment: .center)
        
        
            }
    }


struct TextBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        TextBootcamp()
    }
}
