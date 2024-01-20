//
//  EnvironmentObjectBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Emine CETINKAYA on 20.01.2024.
//

import SwiftUI

//Observed Object
//State Object
//Environment Object

class EnvironmentViewModel: ObservableObject {
    
    
    @Published var dataArray: [String] = []
    
    init() {
     getData()
    }
    
    func getData(){
        self.dataArray.append(contentsOf: ["iPhone", "iPad", "iMac", "Apple Watch"])
    }
}

struct EnvironmentObjectBootcamp: View {
    
    @StateObject var viewModel: EnvironmentViewModel = EnvironmentViewModel()
    
    var body: some View {
        NavigationView {
            List{
                ForEach(viewModel.dataArray, id: \.self) { item in
                    NavigationLink(
                        destination: DetailView(selectedItem: item),
                        label: {
                            Text(item)
                        })
                }
                .navigationTitle("iOS Devices")
            }
            
            .environmentObject(viewModel)
        }
       
        
    }
}

struct DetailView: View{
    
    let selectedItem: String
    
    var body: some View{
        ZStack{
//            background
            Color.orange.ignoresSafeArea()
            
//            foreground
            NavigationLink(destination: FinalView(),
                           label: {
                Text(selectedItem)
                    .font(.headline)
                    .foregroundColor(.orange)
                    .padding()
                    .padding(.horizontal)
                    .background(Color.white)
                    .cornerRadius(30)

                
            })
      
        }
    }
}

struct FinalView: View{
    
    @EnvironmentObject var viewModel: EnvironmentViewModel
    
    var body: some View{
       ZStack
        {
//           background
            LinearGradient(gradient: Gradient(colors: [Color.purple, Color.blue]),
                           startPoint: .topLeading,
                           endPoint: .bottomTrailing)
            .ignoresSafeArea()
            
//            foreground
            ScrollView{
                VStack(spacing: 20){
                    ForEach(viewModel.dataArray, id: \.self) { item in
                        Text(item)
                    }
                }
                .foregroundColor(.white)
                .font(.largeTitle)
                
                
            }
        }
    }
}

#Preview {
    EnvironmentObjectBootcamp()
//    DetailView(selectedItem: "iphone")
//    FinalView()
}
