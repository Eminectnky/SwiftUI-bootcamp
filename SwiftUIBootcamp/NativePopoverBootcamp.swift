//
//  S.swift
//  SwiftUIBootcamp
//
//  Created by Emine CETINKAYA on 28.01.2024.
//

import SwiftUI

struct NativePopoverBootcamp: View {
    
    @State private var showPopover: Bool = false
    @State private var feedbackOptions: [String] = [
        "Very Good 😍",
        "Average 😕",
        "Very bad 😡"
    ]
    
    var body: some View {
        ZStack{
            Color.gray.ignoresSafeArea()
            
            VStack {
                Spacer()
                Button("CLICK ME!"){
                    showPopover.toggle()
                    
                }
                .padding(20)
                .background(Color.yellow)
                .popover(isPresented: $showPopover, attachmentAnchor: .point(.top), content: {
                    ScrollView{
                        VStack(alignment: .leading, spacing: 12, content: {
                            ForEach(feedbackOptions, id: \.self) { option in
                                Button(option){
                                    
                                }
                                if option != feedbackOptions.last {
                                    Divider()
                                }
                                
                            }
                        })
                        .padding(20)
                    }
                    .presentationCompactAdaptation(horizontal: .popover, vertical: .popover)
                })
              
            }
        }
    }
}

#Preview {
    NativePopoverBootcamp()
}
