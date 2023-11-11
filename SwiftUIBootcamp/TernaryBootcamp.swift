//
//  TernaryBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Emine CETINKAYA on 11.11.2023.
//

import SwiftUI

struct TernaryBootcamp: View {
    
    @State var isstartingState: Bool = false
    
    var body: some View {
        VStack{
            
            Button("Button: \(isstartingState.description)"){
                isstartingState.toggle()
                
            }
            
            
            Text(isstartingState ? "STARTING STATE!!!" : "ENDING STATE.")
            
            
            RoundedRectangle(cornerRadius: isstartingState ? 25 : 0)
                .fill(isstartingState  ? Color.red : Color.blue)
                    .frame(
                        width: isstartingState ? 200 : 50,
                        height: isstartingState ? 400 : 50)
   
            
            Spacer()
        }
    }
}

#Preview {
    TernaryBootcamp()
}
