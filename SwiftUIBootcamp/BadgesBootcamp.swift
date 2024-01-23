//
//  BadgesBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Emine CETINKAYA on 22.01.2024.
//

import SwiftUI

//List
//TabView

struct BadgesBootcamp: View {
    var body: some View {
        
//        
//        List{
//            Text("Hello World!")
//                .badge("NEW ITEMS!")
//            Text("Hello World")
//                .badge(5)
//            Text("Hello World")
//            Text("Hello World")
//        }
        
        TabView {
            Color.red
                .tabItem {
                    Image(systemName: "heart.fill")
                    Text("Hello")
                }
                .badge("NEW")
            
            Color.green
                .tabItem {
                    Image(systemName: "heart.fill")
                    Text("Hello")
                     
                }
                .badge(5)
            
            Color.blue
                .tabItem {
                    Image(systemName: "heart.fill")
                    Text("Hello")
                }
        }
    }
}

#Preview {
    BadgesBootcamp()
}
