//
//  ButtonStylesBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Emine CETINKAYA on 21.01.2024.
//

import SwiftUI

struct ButtonStylesBootcamp: View {
    var body: some View {
        
        VStack{
            
            Button {
                
            } label: {
                Text("Button Label")
                    .frame(height: 55)
                    .frame(maxWidth: .infinity)
            }
            .buttonStyle(.borderedProminent)
            .buttonBorderShape(.roundedRectangle(radius: 20))
            .controlSize(.large)
            
            
            Button("Button Title") {
                
            }
            .font(.headline)
            .frame(height: 55)
            .frame(maxWidth: .infinity)
            .controlSize(.large)
            //            .buttonStyle(.plain)
            .buttonStyle(.borderedProminent)
            
            
            Button("Button Title") {
                
            }
            .font(.headline)
            .frame(height: 55)
            .frame(maxWidth: .infinity)
            .controlSize(.regular)
            //            .buttonStyle(.bordered)
            .buttonStyle(.borderedProminent)
            
            
            Button("Button Title") {
                
            }
            .font(.headline)
            .frame(height: 55)
            .frame(maxWidth: .infinity)
            .controlSize(.small)
            .buttonStyle(.borderedProminent)
            
            
            Button("Button Title") {
                
            }
            .font(.headline)
            .frame(height: 55)
            .frame(maxWidth: .infinity)
            .controlSize(.mini)
            //            .buttonStyle(.borderless)
            .buttonStyle(.borderedProminent)
        }
        .padding()
    }
}

#Preview {
    ButtonStylesBootcamp()
}
