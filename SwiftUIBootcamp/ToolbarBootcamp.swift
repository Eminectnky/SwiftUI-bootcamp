//
//  ToolbarBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Emine CETINKAYA on 25.01.2024.
//

import SwiftUI

struct ToolbarBootcamp: View {
    @State private var text: String = ""
    @State private var paths: [String] = []
    
    var body: some View {
        
        NavigationStack(path: $paths){
            ZStack{
                Color.white.ignoresSafeArea()
                ScrollView{
                    TextField("Placeholder", text: $text)
                    ForEach(0..<50) { _ in
                        Rectangle()
                            .fill(Color.blue)
                            .frame(width: 200, height: 200)
                    }
                }
              
            }
            .navigationTitle("Toolbar")
            //            .navigationBarItems(
            //                leading: Image(systemName: "heart.fill"),
            //            trailing: Image(systemName: "gear")
            //            )
            .toolbar{
                ToolbarItem(placement: .navigationBarLeading) {
                    Image(systemName: "heart.fill")
                }
                ToolbarItem(placement: .navigationBarTrailing) {
//                    HStack{
//                        Image(systemName: "house.fill")
                        Image(systemName: "gear")
//                    }
                     
                        
                       
                    
                }
            }
//            .navigationBarBackButtonHidden(true)
//            .toolbar(.hidden, for: .automatic)
//            .toolbarBackground(.hidden, for: .navigationBar)
//            .toolbarColorScheme(.dark, for: .navigationBar)
            .navigationBarTitleDisplayMode(.inline)
            .toolbarTitleMenu {
                Button("Screen 1"){
                    paths.append("Screen 1")
                }
                Button("Screen 2"){
                    paths.append("Screen 2")
                    
                }
                Button("Screen 3"){
                    paths.append("Screen 3")
                }
            }
            .navigationDestination(for: String.self) { value in
                Text("New screen: \(value)")
               
            }
        }
        
       
    }
}

#Preview {
    ToolbarBootcamp()
}
