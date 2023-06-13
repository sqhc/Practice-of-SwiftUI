//
//  ListSwipeActionsPractice.swift
//  Practice of SwiftUI
//
//  Created by 沈清昊 on 6/13/23.
//

import SwiftUI

struct ListSwipeActionsPractice: View {
    @State var fruits : [String] = [
        "apple", "orange", "banana", "peach"
    ]
    
    var body: some View {
        List{
            ForEach(fruits, id: \.self) {
                Text($0.capitalized)
            }
//            .onDelete(perform: delete)
            .swipeActions(edge: .trailing, allowsFullSwipe: true) {
                Button("Archive") {
                    
                }
                .tint(.green)
                
                Button("Save") {
                    
                }
                .tint(.blue)
                
                Button("Junk") {
                    
                }
                .tint(.black)
            }
            .swipeActions(edge: .leading, allowsFullSwipe: true) {
                Button("Share") {
                    
                }
                .tint(.yellow)
            }
        }
    }
    
    func delete(indexSet: IndexSet){
        
    }
}

struct ListSwipeActionsPractice_Previews: PreviewProvider {
    static var previews: some View {
        ListSwipeActionsPractice()
    }
}
