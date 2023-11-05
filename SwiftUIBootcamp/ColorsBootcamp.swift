//
//  ColorsBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Emine CETINKAYA on 5.09.2023.
//

import SwiftUI

struct ColorsBootcamp: View {
    var body: some View {
        RoundedRectangle(cornerRadius: 25.0)
//            .fill(Color.primary)
            .fill(
//            Color(UIColor.secondarySystemBackground)
//        )
        
        Color("CustomColor")
            
        )
        
            .frame(width: 350, height: 200)
//            .shadow(radius: 10)
            .shadow   (   color: Color("CustomColor").opacity(0.8), radius: 10, x:-20, y:25)
    }
}

struct ColorsBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ColorsBootcamp()
    }
}
