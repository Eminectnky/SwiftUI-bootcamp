//
//  IntroView.swift
//  SwiftUIBootcamp
//
//  Created by Emine CETINKAYA on 20.01.2024.
//

import SwiftUI

struct IntroView: View {
    
    @AppStorage("signed_in") var currentUserSignedIn: Bool = false
    
    var body: some View {
        ZStack{
//            background
            RadialGradient(gradient:Gradient(colors: [Color.purple, Color.blue]),
                           center: .topLeading,
                           startRadius: 5,
                           endRadius: UIScreen.main.bounds.height)
            .ignoresSafeArea()
            
            if currentUserSignedIn {
                Text("Profile View")
            }else {
                Text("Onboarding View")
            } 
        }
    }
}

#Preview {
    IntroView()
}
