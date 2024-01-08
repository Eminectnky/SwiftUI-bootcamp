//
//  ColorPickerBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Emine CETINKAYA on 8.01.2024.
//

import SwiftUI

struct ColorPickerBootcamp: View {
    
    @State var backgroundColor: Color = .green
    
    var body: some View {
        ZStack{
            backgroundColor
                .edgesIgnoringSafeArea(.all)
            
            ColorPicker("Select a color",
                selection: $backgroundColor,
                supportsOpacity: true)
            .padding()
            .background(Color.black)
            .cornerRadius(10)
            .foregroundColor(.white)
            .font(.headline)
            .padding(50)
        }
    }
}

#Preview {
    ColorPickerBootcamp()
}
