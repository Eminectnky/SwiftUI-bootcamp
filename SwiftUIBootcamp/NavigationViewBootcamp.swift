//
//  NavigationViewBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Emine CETINKAYA on 2.01.2024.
//

import SwiftUI

struct NavigationViewBootcamp: View {
    var body: some View {
        
        NavigationView {
            ScrollView {
                
                NavigationLink("Hello, world!", destination: MyOtherScreen()) //Diğer ekrana geçmek için kullanılır
                
                Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
                Text("Hello, World!")
                Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
            }
            .navigationTitle("All Inboxes")
            .navigationBarTitleDisplayMode(.automatic) //Başlık stilini değiştirmek için
//.navigationBarHidden(true)
            
            .navigationBarItems(
                leading:
                    
                    HStack{
                        Image(systemName: "person.fill")
                        Image(systemName: "flame.fill")
                    }
                  
                
                , trailing: NavigationLink(destination: MyOtherScreen(), label: {
                Image(systemName: "gear")
            })
                .accentColor(.red)
            )
          
            
            
            
        }
    }
}

struct MyOtherScreen : View {
    
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View{
        ZStack{
            Color.green.edgesIgnoringSafeArea(.all)
                .navigationTitle("Green Screen")
                .navigationBarHidden(true)
            
            VStack {
                Button("BACK BUTTON"){
                    presentationMode.wrappedValue.dismiss()
                }
                
                NavigationLink("Click here", destination: Text("3rd screen!"))
            }
        }
    }
}

#Preview {
    NavigationViewBootcamp()
}
