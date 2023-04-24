//
//  ListPractice.swift
//  Practice of SwiftUI
//
//  Created by 沈清昊 on 4/24/23.
//

import SwiftUI

struct ListPractice: View {
    
    @State var fruits : [String] = [
        "apple", "orange", "banana", "peach"
    ]
    
    @State var vegetables: [String] = [
        "tomato", "potato", "carrot"
    ]
    
    var body: some View {
        NavigationView {
            List{
                Section {
                    ForEach(fruits, id: \.self) {fruit in
                        Text(fruit.capitalized)
                            .font(.caption)
                            .foregroundColor(.white)
                            .padding(.vertical)
                    }
                    .onDelete(perform: delete)
                    .onMove(perform: move)
                    .listRowBackground(Color.blue)
                }
                header: {
                    HStack {
                        Text("Fruits")
                        Image(systemName: "flame.fill")
                    }
                    .font(.headline)
                    .foregroundColor(.orange)
                }
                
                Section {
                    ForEach(vegetables, id: \.self) { veggie in
                        Text(veggie.capitalized)
                    }
                } header: {
                    Text("Vegies")
                }

            }
            //.listStyle(InsetGroupedListStyle())
            .navigationTitle("Grocery List")
            .navigationBarItems(
                leading: EditButton(),
                trailing: addButton
            )
            //.tint(Color.purple)
        }
        .tint(Color.red)
    }
    
    var addButton: some View{
        Button("Add", action: {
            add()
        })
    }
    
    func delete(indexSet: IndexSet){
        fruits.remove(atOffsets: indexSet)
    }
    
    func move(indexSet: IndexSet, offSet: Int){
        fruits.move(fromOffsets: indexSet, toOffset: offSet)
    }
    
    func add(){
        fruits.append("Cocount")
    }
}

struct ListPractice_Previews: PreviewProvider {
    static var previews: some View {
        ListPractice()
    }
}
