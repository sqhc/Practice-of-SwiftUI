//
//  ExtractSubViewsPractice.swift
//  Practice of SwiftUI
//
//  Created by 沈清昊 on 4/15/23.
//

import SwiftUI

struct ExtractSubViewsPractice: View {
    var body: some View {
        ZStack{
            Color.purple.edgesIgnoringSafeArea(.all)
            
            contentLayer
        }
    }
    var contentLayer: some View{
        HStack {
            MyItem(title: "Apples", count: 1, color: .red)
            MyItem(title: "Oranges", count: 10, color: .orange)
            MyItem(title: "Bananas", count: 34, color: .yellow)
        }
    }
}

struct ExtractSubViewsPractice_Previews: PreviewProvider {
    static var previews: some View {
        ExtractSubViewsPractice()
    }
}

struct MyItem: View {
    
    let title: String
    let count: Int
    let color: Color
    
    var body: some View {
        VStack{
            Text("\(count)")
            Text(title)
        }
        .padding()
        .background(color)
        .cornerRadius(10)
    }
}
