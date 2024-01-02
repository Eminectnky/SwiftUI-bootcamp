//
//  NavigationViewBootcamp1.swift
//  SwiftUIBootcamp
//
//  Created by Emine CETINKAYA on 2.01.2024.
//

import SwiftUI

struct NavigationViewBootcamp1: View {
    var body: some View {
        
        NavigationView{
            ScrollView{
                
            NavigationLink("Hi Emine", destination: My2rdScreen())
            NavigationLink("Hi Emine", destination: My3rdScreen())
                
                Text("Hi Emine")
                Text("Hi Emine")
            }
            
            .navigationTitle("My Screen")
            
            .navigationBarItems(leading:
                                NavigationLink(destination: My2rdScreen(), label: {
                Image(systemName: "person.fill")
            })
                                    .accentColor(.cyan)
                                    ,
                                trailing: NavigationLink(destination: My3rdScreen(), label: {
                Image(systemName: "gear")
            })
                                        .accentColor(.red)
            
            
       
       )}
    }
}

struct My2rdScreen: View{
    var body: some View{
        ZStack{
            Color.blue.edgesIgnoringSafeArea(.all)
            Text("Persons")
        }
    }
}

struct My3rdScreen: View{
    var body: some View{
        ZStack{
            Color.purple.edgesIgnoringSafeArea(.all)
            Text("Settings")
                
        }
    }
}


#Preview {
    NavigationViewBootcamp1()
}
