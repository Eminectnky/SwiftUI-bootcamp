//
//  SafeAreaInsetBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Emine CETINKAYA on 26.01.2024.
//

import SwiftUI

struct SafeAreaInsetBootcamp: View {
    var body: some View {
        NavigationStack{
            List(0..<10) { _ in
                Rectangle()
                    .frame(height: 300)
            }
            .navigationTitle("Safe Area Insets")
            .navigationBarTitleDisplayMode(.inline)
//            .overlay(
//               Text("Hi")
//                .frame(maxWidth: .infinity)
//                .background(Color.purple)
//               
//               ,alignment: .bottom
//            )
            .safeAreaInset(edge: .top, alignment: .trailing, spacing: nil) {
                Text("Hi")
                               .frame(maxWidth: .infinity)
//                    .padding()
                               .background(Color.purple.edgesIgnoringSafeArea(.bottom))
//                    .clipShape(Circle())
//                    .padding()
                             
            }
        }
    }
}
#Preview {
    SafeAreaInsetBootcamp()
}
