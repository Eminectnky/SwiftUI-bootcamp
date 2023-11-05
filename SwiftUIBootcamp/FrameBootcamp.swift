//
//  FrameBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Emine CETINKAYA on 2.10.2023.
//

import SwiftUI

struct FrameBootcamp: View {
    var body: some View {
        Text("Hello World!")
            .background(Color.orange)
//            .frame(width: 300, height: 300, alignment: .leading)
//            .background(Color.purple)
//            .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .center)
//            
//            .background(Color.purple)
            .frame(height: 100, alignment: .top)
            .background(Color.purple)
            .frame(width: 150)
            .background(Color.pink)
            .frame(maxWidth: .infinity, alignment: .leading)
            .background(Color.teal)
            .frame(height: 400)
            .background(Color.blue)
            .frame(maxHeight: .infinity, alignment: .top)
            .background(Color.pink)
        
    }
}

struct FrameBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        FrameBootcamp()
    }
}
