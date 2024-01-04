//
//  ContextMenuBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Emine CETINKAYA on 4.01.2024.
//

import SwiftUI

struct ContextMenuBootcamp: View {
    
    @State var backgroundColor : Color = Color(.blue)
    
    var body: some View {
        VStack(alignment: .leading, spacing: 10.0){
            Image(systemName: "house.fill")
                .font(.title)
            
            Text("SwiftUI Thinking")
                .font(.headline)
            
            Text("How to use Context Menu")
                .font(.subheadline)
        }
        .foregroundColor(.white)
        .padding(30.0)
        .background(backgroundColor
            .cornerRadius(30.0))
        .contextMenu(ContextMenu(menuItems: {
            Button(action: {
                backgroundColor = .yellow
            
            }, label: {
                Label("Share post", systemImage: "flame.fill")
            })
            
            Button(action: {
                backgroundColor = .red
            }, label: {
                Text("Report post")
            })
            
            Button(action: {
                backgroundColor = .green
            }, label: {
                HStack{
                    Text("Like post")
                    Image(systemName: "heart.fill")
                }
         })
    
   })
)}
        
}
                     
#Preview {
    ContextMenuBootcamp()
}
        
