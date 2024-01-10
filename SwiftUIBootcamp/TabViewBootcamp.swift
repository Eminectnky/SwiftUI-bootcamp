//
//  TabViewBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Emine CETINKAYA on 10.01.2024.
//

import SwiftUI

struct TabViewBootcamp: View {
    
    @State var selectedTab: Int = 0
    
    let icons: [String] = [
        "heart.fill", "globe","house.fill","person.fill"
  ]
    
    var body: some View {
        
        TabView{
            ForEach(icons, id: \.self) { icon in
                Image(systemName: icon)
                    .resizable()
                    .scaledToFit()
                    .padding(30)
            }
        }
        .background(
            RadialGradient(gradient: Gradient(colors: [Color.red, Color.blue]), center: .center, startRadius: 5, endRadius: 300)
        )
        .frame(height: 300)
        .tabViewStyle(PageTabViewStyle())
        
        //        TabView(selection: $selectedTab) {
        //
        //
        //
        //                HomeView(selectedTab: $selectedTab)
        //                    .tabItem {
        //                        Image(systemName: "house.fill")
        //                        Text("Home")
        //                    }
        //                    .tag(0)
        //
        //                Text("BROWSE TAB")
        //                    .tabItem {
        //                        Image(systemName: "globe")
        //                        Text("Browse")
        //                    }
        //                    .tag(1)
        //
        //                Text("PROFILE TAB")
        //                    .tabItem {
        //                        Image(systemName: "person.fill")
        //                        Text("Profile")
        //                    }
        //                    .tag(2)
        //            }
        .accentColor(.red)
        
                }
            }
        
        
        #Preview {
            TabViewBootcamp()
        }
        
        struct HomeView: View {
            
            @Binding var selectedTab: Int
            var body: some View {
                ZStack{
                    Color.red.edgesIgnoringSafeArea(.top)
                    
                    VStack{
                        Text("Home Tab")
                            .font(.largeTitle)
                            .foregroundColor(.white)
                        
                        Button(action: {
                            selectedTab = 2
                        }, label: {
                            Text("Go to profile")
                                .font(.headline)
                                .padding()
                                .background(Color.white)
                                .cornerRadius(10)
                        })
                    }
                    
                }
                
            }
        }
