//
//  IfLetGuardBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Emine CETINKAYA on 13.01.2024.
//

import SwiftUI

struct IfLetGuardBootcamp: View {
    
    @State var currentUserId: String? = "testuser123"
    @State var displayText: String? = nil
    @State var isLoading: Bool = false
    
    var body: some View {
        NavigationView{
            VStack{
                Text("Here we are practicing safe coding!")
                
                if let text = displayText{
                    Text(text)
                        .font(.title)
                }
                
                if isLoading{
                    ProgressView()
                }
               
                
                Spacer()
            }
            .navigationTitle("Safe Coding")
            .onAppear{
                loadData()
            }
        }
    }
    
    func loadData(){
        
        if let userID = currentUserId {
            isLoading = true
            DispatchQueue.main.asyncAfter(deadline: .now() + 3){
                displayText = "This is the new data! User id is: \(userID)"
                isLoading = false
            }
        }else{
            displayText = "Error. There is no User ID!"
        }
        
    }
}

#Preview {
    IfLetGuardBootcamp()
}
