//
//  ListBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Emine CETINKAYA on 2.01.2024.
//

import SwiftUI

struct ListBootcamp: View {
    
    @State var fruits: [String] = [
        "apple", "orange", "banana", "peach"
    ]
    
    @State var  veggies: [String] = [
    "tomato", "potato", "carrot"
    ]
    var body: some View {
        NavigationView {
            List{
                Section(
                    header:
                        HStack {
                            Text("Fruits")
                            Image(systemName: "flame.fill")
                        }
                        .font(.headline)
                        .foregroundColor(.orange)
                ){
                    ForEach(fruits, id: \.self) { fruit in
                        Text(fruit.capitalized)
                            .font(.caption)
                            .foregroundColor(.white)
//                            .frame(maxWidth: .infinity, maxHeight: .infinity)
//                            .background(Color.orange)
                            .padding(.vertical)
                        
                        
                    }
                    .onDelete(perform: delete)
                    .onMove(perform: move)
                    .listRowBackground(Color.orange)
                    
                }
                
                Section(header: 
                            HStack {
                    Text("Veggies")
                    Image(systemName: "flame.fill")
                }
                    .font(.headline)
                    .foregroundColor(.green)
                ){
                    ForEach(veggies, id: \.self){ veggies in
                        Text(veggies.capitalized)
                            .font(.caption)
                            .foregroundColor(.white)
//                            .frame(maxWidth: .infinity, maxHeight: .infinity)
//                            .background(Color.green)
                            .padding(.vertical)
                            .listRowBackground(Color.green)
                    }
                }
            }
            .accentColor(.purple)
           
            
//            .listStyle(SidebarListStyle())
            .navigationTitle("Grocery List")
            .navigationBarItems(leading: EditButton(),trailing: addButton)
        }
        
        .accentColor(.red)
        
    }
    
    var addButton : some View{
        Button("Add", action: {
            add()
        })
    }
    
    func delete(indexSet: IndexSet){
        fruits.remove(atOffsets: indexSet)
        
    }
    
    func move(indices: IndexSet, newOffset: Int){
        fruits.move(fromOffsets: indices, toOffset: newOffset)
        
    }
    
    func add(){
        fruits.append("Coconat")
    }
    
}

#Preview {
    ListBootcamp()
}
