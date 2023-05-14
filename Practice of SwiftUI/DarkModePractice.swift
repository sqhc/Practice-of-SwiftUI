//
//  DarkModePractice.swift
//  Practice of SwiftUI
//
//  Created by 沈清昊 on 5/13/23.
//

import SwiftUI

struct DarkModePractice: View {
    
    @Environment(\.colorScheme) var colorScheme
    
    var body: some View {
        NavigationView{
            ScrollView{
                VStack(spacing: 20){
                    Text("This color is PRIMARY")
                        .foregroundColor(.primary)
                    Text("This color is SECONDARY")
                        .foregroundColor(.secondary)
                    Text("This color is BLACK")
                        .foregroundColor(.black)
                    Text("This color is WHITE")
                        .foregroundColor(.white)
                    Text("This color is globally adaptive")
                        .foregroundColor(Color("AdaptiveColor"))
                    Text("This color is locally adaptive")
                        .foregroundColor(colorScheme == .light ? .green : .yellow)
                }
            }
            .navigationTitle("Dark Mode Bootcamp")
        }
    }
}

struct DarkModePractice_Previews: PreviewProvider {
    static var previews: some View {
        Group{
            DarkModePractice()
                .preferredColorScheme(.light)
            DarkModePractice()
                .preferredColorScheme(.dark)
        }
            
    }
}
