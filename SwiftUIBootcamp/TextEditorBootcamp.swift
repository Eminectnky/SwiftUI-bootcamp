//
//  TextEditorBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Emine CETINKAYA on 5.01.2024.
//

import SwiftUI

struct TextEditorBootcamp: View {
    
    @State var textEditorText: String = "This is the startiing text."
    @State var savedText: String = ""
    
    var body: some View {
        NavigationView{
            VStack{
                TextEditor(text: $textEditorText)
                    .frame(height: 250)
//                    .foregroundColor(.red)
//                    .background(Color.red)
                    .colorMultiply(.gray).opacity(0.9)
                    .cornerRadius(10)
                
                Button(action: {
                    savedText = textEditorText
                }, label: {
                    Text("Save".uppercased())
                        .font(.headline)
                        .foregroundColor(.white)
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(Color.blue)
                        .cornerRadius(10)
                })
                Text(savedText)
                
                Spacer()
            }
            .padding()
            .navigationTitle("TextEditor Bootcamp!")
        }
    }
}

#Preview {
    TextEditorBootcamp()
}
