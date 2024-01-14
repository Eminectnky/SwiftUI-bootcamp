//
//  TapGestureBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Emine CETINKAYA on 14.01.2024.
//

import SwiftUI

struct TapGestureBootcamp: View {
    
    @State var isSelected: Bool = false
    
    var body: some View {
        VStack(spacing: 40){

        RoundedRectangle(cornerRadius: 25.0)
                .frame(height: 200)
                .foregroundColor(isSelected ? Color.green : Color.red)
               
            
            Button(action: {
                isSelected.toggle()
            }, label: {
                Text("Button")
                    .font(.headline)
                    .foregroundColor(.white)
                    .frame(height: 55)
                    .frame(maxWidth: .infinity)
                    .background(Color.blue)
                    .cornerRadius(25)
            })
            
            Text("TAP Gesture")
                .font(.headline)
                .foregroundColor(.white)
                .frame(height: 55)
                .frame(maxWidth: .infinity)
                .background(Color.blue)
                .cornerRadius(25)
//                .onTapGesture {  //Tıklanma işlevi görür ama buton gibi tıklanınca vurgulanma olmaz
//                    isSelected.toggle()
//                }

                .onTapGesture(count: 2, perform: { //birden fazla tıklanmayla eylemi gerçekleştirebilmek için 
                    isSelected.toggle()
                })
            Spacer()
            
        }
        
        .padding(40)
    }
}

#Preview {
    TapGestureBootcamp()
}
