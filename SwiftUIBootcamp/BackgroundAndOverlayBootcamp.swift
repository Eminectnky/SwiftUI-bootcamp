//
//  BackgroundAndOverlayBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Emine CETINKAYA on 2.10.2023.
//

import SwiftUI

struct BackgroundAndOverlayBootcamp: View {
    var body: some View {
       
//            ScrollView{
//
//
//                Image(systemName: "star.fill")
//                    .foregroundColor(Color.yellow)
//                    .font(.system(size: 30))
//
//
//                    .background(
//                        Circle()
//                            .fill(Color.blue)
//                            .frame(width: 100, height: 100)
//
//
//                    )
//                    .padding(60)
//
//
//                Image(systemName: "star.fill")
//                    .foregroundColor(Color.yellow)
//                    .font(.system(size: 30))
//
//
//                    .background(
//                        Circle()
//                            .fill(Color.pink)
//                            .frame(width: 100, height: 100)
//
//
//                    )
//
//                    .padding(10)
//
//
//                Image(systemName: "star.fill")
//                    .foregroundColor(Color.yellow)
//                    .font(.system(size: 30))
//
//
//                    .background(
//                        Circle()
//                            .fill(Color.green)
//                            .frame(width: 100, height: 100)
//
//
//
//                    )
//
//                    .padding(70)
//
//
//                Image(systemName: "star.fill")
//                    .foregroundColor(Color.yellow)
//                    .font(.system(size: 30))
//
//
//                    .background(
//                        Circle()
//                            .fill(Color.purple)
//                            .frame(width: 100, height: 100)
//
//
//
//                    )
//
//                Image(systemName: "star.fill")
//                    .foregroundColor(Color.yellow)
//                    .font(.system(size: 30))
//
//
//                    .background(
//                        Circle()
//                            .fill(Color.orange)
//                            .frame(width: 100, height: 100)
//
//
//
//                    )
//                    .padding(70)
//
//
//                Image(systemName: "star.fill")
//                    .foregroundColor(Color.yellow)
//                    .font(.system(size: 30))
//
//
//                    .background(
//                        Circle()
//                            .fill(Color.teal)
//                            .frame(width: 100, height: 100)
//
//
//
//                    )
//
//    }
        
        Image(systemName: "heart.fill")
            .font(.system(size: 40))
            .foregroundColor(.mint)
            .background(
            Circle()
                .fill(
                    LinearGradient(colors: [Color.blue, Color.red], startPoint: .topLeading, endPoint: .bottomTrailing)
                )
                .frame(width: 100, height: 100)
                .shadow(color: .mint, radius: 10, x:0.0, y:10)
                .overlay(
                    Circle()
                      .fill(Color.blue)
                      .frame(width: 35, height: 35).overlay(
                      Text("1")
                        .font(.headline)
                        .foregroundColor(.white)
                    )
                      .shadow(color: .blue, radius: 10, x:0.0, y:5)
               ,alignment: .bottomTrailing)

                )

            
        
//        Rectangle()
//            .frame(width: 100, height: 100)
//            .overlay(
//                Rectangle()
//                    .fill(Color.purple)
//                    .frame(width: 50, height: 50)
//                ,alignment: .topLeading
//
//            ).background(
//            Rectangle()
//                .fill(Color.green)
//                .frame(width: 150, height: 150)
//            , alignment: .bottomTrailing
//
//            )
//
//        Circle()
//            .fill(Color.pink)
//            .frame(width: 100, height: 100)
//            .overlay(
//            Text("1")
//                .font(.largeTitle)
//                .foregroundColor(Color.white)
//
//            )
//            .background(
//                Circle()
//                    .fill(Color.purple)
//                    .frame(width: 110, height: 110)
//
//            )
//        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
//
//            .background(
//                Color.red
//                LinearGradient(colors: [Color.red, Color.blue], startPoint: .leading, endPoint: .trailing)
//                Circle()
//                    .fill(LinearGradient(colors: [Color.red, Color.blue], startPoint: .leading, endPoint: .trailing))
//                    .frame(width: 100, height: 100, alignment: .center)
//
//            )
//
//            .background(
//        Circle()
//            .fill(LinearGradient(colors: [Color.blue, Color.red], startPoint: .leading, endPoint: .trailing))
//            .frame(width: 120, height: 120, alignment: .center)
//        )
    }
}

struct BackgroundAndOverlayBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        BackgroundAndOverlayBootcamp()
    }
}
