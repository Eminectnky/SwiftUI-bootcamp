//
//  ExractSubviewsBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Emine CETINKAYA on 10.11.2023.
//

import SwiftUI

struct ExractSubviewsBootcamp: View {
    var body: some View {
        ZStack{
            Color(.blue).edgesIgnoringSafeArea(.all)
            
          contentLayer
            
           
        }
    }
    
    var contentLayer: some View{
        HStack{
            MyItem(title: "Apples", count: 1, color: .red)
            MyItem(title: "Oranges", count: 10, color: .orange)
            MyItem(title: "Bananas", count: 34, color: .yellow)
            
        }
    }
  
}

#Preview {
    ExractSubviewsBootcamp()
}

struct MyItem: View {
    
    let title: String
    let count: Int
    let color: Color
    
    var body: some View {
        VStack{
            Text("\(count)")
            Text(title)
        }
        .background(color)
        .cornerRadius(10)
    }
}
