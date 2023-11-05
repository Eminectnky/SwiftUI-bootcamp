//
//  ShapesBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Emine CETINKAYA on 5.09.2023.
//

import SwiftUI

struct ShapesBootcamp: View {
    var body: some View {
//       Circle()
//        Ellipse()
//        Capsule(style: .circular)
//        Rectangle()
        RoundedRectangle(cornerRadius: 10)
//          .fill(Color.purple)
//            .foregroundColor(.pink)
        
//           .stroke(Color.pink)
        
//            .stroke(Color.blue, lineWidth: 30)
        
//            .stroke(Color.pink, style: StrokeStyle(lineWidth: 20, lineCap: .round, dash: [40]) )
        
           .trim(from: 0.2, to: 1.0)
            .stroke(Color.purple, lineWidth: 50)
        
            .frame(width: 300, height: 200)
    }
}

struct ShapesBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ShapesBootcamp()
    }
}
