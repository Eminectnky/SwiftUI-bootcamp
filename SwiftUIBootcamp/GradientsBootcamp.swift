//
//  GradientsBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Emine CETINKAYA on 6.09.2023.
//

import SwiftUI

struct GradientsBootcamp: View {
    var body: some View {
        RoundedRectangle(cornerRadius: 25.0)
            .fill(
//                Color.red
//
//                LinearGradient(colors: [Color("CustomColor"), Color("CustomColor1")], startPoint: .topLeading,     endPoint: .bottom)
                
                
//                RadialGradient(colors:
//                                [Color("CustomColor"), Color("CustomColor1")],
//                               center: .leading,
//                               startRadius: 5,
//                               endRadius: 400
//                              )
                
                AngularGradient(colors: [Color("CustomColor"), Color("CustomColor1")],
                                center: .topLeading,
                                angle: .degrees(180+45))
                
            )
        
            .frame(width: 300, height: 200)
    }
}

struct GradientsBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        GradientsBootcamp()
    }
}
