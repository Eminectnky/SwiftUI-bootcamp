//
//  GroupBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Emine CETINKAYA on 26.01.2024.
//

import SwiftUI

struct GroupBootcamp: View {
    var body: some View {
        VStack(spacing: 50){
            Text("Hello, world!")
            
            Group {
                Text("Hello, world!")
                Text("Hello, world!")
                
            }
           
                .font(.caption)
                .foregroundColor(.green)
        }
        .foregroundColor(.red)
        .font(.headline)
    }
}

#Preview {
    GroupBootcamp()
}
