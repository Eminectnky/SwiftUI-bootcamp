//
//  AnyLayoutBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Emine CETINKAYA on 28.01.2024.
//

import SwiftUI

struct AnyLayoutBootcamp: View {
    
    @Environment(\.horizontalSizeClass) private var  horizontalSizeClass
    @Environment(\.verticalSizeClass) private var verticalSizeClass
    
    var body: some View {
        VStack(spacing: 12){
            Text("horizontal: \(horizontalSizeClass.debugDescription)")
            Text("vertical: \(verticalSizeClass.debugDescription)")
            
            let layout: AnyLayout = horizontalSizeClass == .compact ? AnyLayout(VStackLayout()) : AnyLayout(HStackLayout())

            layout {
                Text("Alpha")
                Text("Beta")
                Text("Gamma")
            }
            
//            if horizontalSizeClass == .compact {
//                VStack{
//                    Text("Alpha")
//                    Text("Beta")
//                    Text("Gamma")
//                }
//            }else {
//                HStack{
//                    Text("Alpha")
//                    Text("Beta")
//                    Text("Gamma")
//                }
//            }
            
         
        }
    }
}

#Preview {
    AnyLayoutBootcamp()
}
