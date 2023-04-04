//
//  InitializerView.swift
//  Practice of SwiftUI
//
//  Created by 沈清昊 on 4/3/23.
//

import SwiftUI

struct InitializerView: View {
    let backgroundColor: Color
    let count: Int
    let title: String
    
    init(count: Int, fruit: Fruit){
        self.count = count
        if fruit == .apple{
            self.title = "Apples"
            self.backgroundColor = .red
        } else{
            self.title = "Oranges"
            self.backgroundColor = .orange
        }
    }
    
    enum Fruit{
        case apple
        case orange
    }
    
    var body: some View {
        VStack(spacing: 12){
            Text("\(count)")
                .font(.largeTitle)
                .foregroundColor(.white)
                .underline()
            Text(title)
                .font(.headline)
                .foregroundColor(.white)
        }
        .frame(width: 150, height: 150)
        .background(backgroundColor)
        .cornerRadius(10)
    }
}

struct InitializerView_Previews: PreviewProvider {
    static var previews: some View {
        HStack{
            InitializerView(count: 100, fruit: .apple)
            InitializerView(count: 46, fruit: .orange)
        }
    }
}
