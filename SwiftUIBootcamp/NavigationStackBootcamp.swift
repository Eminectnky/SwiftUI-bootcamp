//
//  NavigationStackBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Emine CETINKAYA on 24.01.2024.
//

import SwiftUI

struct NavigationStackBootcamp: View {
    
    let fruits = ["Apple", "Orange", "Banana"]
    
    @State private var stackPath: [String] = []
    
    var body: some View {
        NavigationStack(path: $stackPath )
        {
      
            ScrollView{
                VStack(spacing: 40){
                    
                    Button("Super seque!") {
                        stackPath.append(contentsOf: [
                                "Coconut","Watermelon", "Mango"
                        
                        ])
                    }

                    
                    ForEach(fruits, id: \.self){ fruit in
                        NavigationLink(value: fruit) {
                            Text(fruit)
                        }
                        
                    }
                    ForEach(0..<10){ x in
                        
                        NavigationLink(value: x){
                            Text("Click me: \(x)")
                        }
                    }

                }
            }
            
            .navigationTitle("Nav Bootcmap")
            .navigationDestination(for: Int.self) { value in
                mySecondScreen(value: value)
            }
            .navigationDestination(for: String.self) { value in
                Text("ANOTHER SCREEN: \(value)")
            }
            
            
        }  
    }
}

struct mySecondScreen: View {
    let value: Int
    
    init(value: Int) {
        self.value = value
        print("INIT SCREEN:  \(value)")
    }
    
    var body: some View{
        Text("Screen \(value)")
    
    }
}

#Preview {
    NavigationStackBootcamp()
}
