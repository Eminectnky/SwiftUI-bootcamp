//
//  ForEachBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Emine CETINKAYA on 6.11.2023.
//

import SwiftUI

struct ForEachBootcamp: View {
    
    let data: [String] = ["Hi", "Hello", "Hey everyone"]
    let myString: String = "Hello"
    
    var body: some View {
        VStack{
            ForEach(data.indices) {
                index in
                
                Text("\(data[index]): \(index)")
            }
            
        }
    }
}

#Preview {
    ForEachBootcamp()
}
