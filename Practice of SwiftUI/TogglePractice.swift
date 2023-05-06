//
//  TogglePractice.swift
//  Practice of SwiftUI
//
//  Created by 沈清昊 on 5/6/23.
//

import SwiftUI

struct TogglePractice: View {
    @State var isOn = true
    
    var body: some View {
        VStack {
            HStack{
                Text("Status:")
                Text(isOn ? "Online" : "Offline")
            }
            .font(.title)
            Toggle("Switch", isOn: $isOn)
                .tint(Color.red)
            Spacer()
        }
        .padding(.horizontal, 100)
    }
}

struct TogglePractice_Previews: PreviewProvider {
    static var previews: some View {
        TogglePractice()
    }
}
