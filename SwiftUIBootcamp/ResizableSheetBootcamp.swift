//
//  ResizableSheetBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Emine CETINKAYA on 26.01.2024.
//

import SwiftUI

struct ResizableSheetBootcamp: View {
    
    @State private var showSheet: Bool = false
    @State private var detents: PresentationDetent = .large
    
    var body: some View {
        Button("Click me!"){
            showSheet.toggle()
            
        }
        .sheet(isPresented: $showSheet) {
            MyNextview(detents: $detents)
            
//                .presentationDetents([.medium, .large], selection: $detents)
            
//                .presentationDetents([.height(100)])
            
//                .presentationDetents([.fraction(0.1),.height(400), .medium, .large])
//                .presentationDetents([.fraction(0.5),.medium, .large], selection: $detents)
//                .presentationDragIndicator(.hidden)
//                .interactiveDismissDisabled() // sayfanın aşağı sürüklenmesine izin vermez
            
        }
//        .onAppear{
//            showSheet = true
//        }
    }
}

struct MyNextview: View {
    
    @Binding var detents: PresentationDetent
    
    var body: some View{
        ZStack{
            Color.red.ignoresSafeArea()
           
            
            VStack(spacing: 20){
                
                Button("20%"){
                    detents = .fraction(0.2)
                      
                }
                
                Button("MEDIUM"){
                    detents = .medium
                      
                }
                
                Button("600 PX"){
                    detents = .height(600)
                      
                }
               
                
                Button("LARGE"){
                    detents = .large
                }
            }
        }
        .presentationDetents([.fraction(0.2),.medium, .height(600), .large], selection: $detents)
        .presentationDragIndicator(.hidden)
    }
}

#Preview {
    ResizableSheetBootcamp()
}
