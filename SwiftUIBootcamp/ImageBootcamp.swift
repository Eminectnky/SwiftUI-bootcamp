//
//  ImageBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Emine CETINKAYA on 1.10.2023.
//

import SwiftUI

struct ImageBootcamp: View {
    var body: some View {
       Image("donut")
//            .renderingMode(.template)
//            .foregroundColor(.green)
//            .resizable()
//            .aspectRatio(contentMode: .fill)
            .scaledToFit()
            .frame(width: 300, height: 300, alignment: .center)
//            .clipped()
        
//            .cornerRadius(150)
    }
}

struct ImageBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ImageBootcamp()
    }
}
