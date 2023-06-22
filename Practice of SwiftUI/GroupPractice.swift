//
//  GroupPractice.swift
//  Practice of SwiftUI
//
//  Created by 沈清昊 on 6/22/23.
//

import SwiftUI

struct GroupPractice: View {
    var body: some View {
        VStack(spacing: 50){
            Text("Hello World!")
            Group{
                Text("Hello World!")
                Text("Hello World!")
            }
            .font(.caption)
            .foregroundColor(.green)
        }
        .foregroundColor(.red)
    }
}

struct GroupPractice_Previews: PreviewProvider {
    static var previews: some View {
        GroupPractice()
    }
}
