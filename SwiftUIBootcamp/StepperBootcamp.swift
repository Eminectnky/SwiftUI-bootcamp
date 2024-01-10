//
//  StepperBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Emine CETINKAYA on 10.01.2024.
//

import SwiftUI

struct StepperBootcamp: View {
    
    @State var stepperValue: Int = 10
    @State var widthIncrement: CGFloat = 0
    
    var body: some View {
        VStack {
            Stepper("Stepper: \(stepperValue)", value:$stepperValue)
                .padding(50)
            
            RoundedRectangle(cornerRadius: 25.0)
                .frame(width: 100 + widthIncrement, height: 100)
            
            Stepper("Stepper 2") {
                //                increment
                incrementWidth(amount: 10)
            }onDecrement: {
                //                decrement
                incrementWidth(amount: -10)
            }
        }
    }
    
    func incrementWidth(amount: CGFloat ) {
        withAnimation(.easeInOut){
            
            widthIncrement += amount
        }
    }
}

#Preview {
    StepperBootcamp()
}
