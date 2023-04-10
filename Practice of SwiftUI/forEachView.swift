//
//  forEachView.swift
//  Practice of SwiftUI
//
//  Created by 沈清昊 on 4/9/23.
//

import SwiftUI

struct forEachView: View {
    
    let data: [String] = ["Hi", "Hello", "Hey everyone"]
    let myString: String = "Hello"
    
    var body: some View {
        VStack{
            ForEach(data.indices) { index in
                Text("\(data[index]): \(index)")
            }
        }
    }
}

struct forEachView_Previews: PreviewProvider {
    static var previews: some View {
        forEachView()
    }
}
