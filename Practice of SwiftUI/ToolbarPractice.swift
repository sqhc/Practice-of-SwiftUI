//
//  ToolbarPractice.swift
//  Practice of SwiftUI
//
//  Created by 沈清昊 on 6/22/23.
//

import SwiftUI

struct ToolbarPractice: View {
    
    @State private var text = ""
    
    var body: some View {
        NavigationView{
            ZStack{
                Color.white.ignoresSafeArea()
                
                ScrollView{
                    TextField("Placeholder", text: $text)
                    ForEach(0..<50) { _ in
                        Rectangle()
                            .frame(width: 200, height: 200)
                    }
                }
            }
            .navigationTitle("Toolbar")
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                    Image(systemName: "heart.fill")
                }
                ToolbarItem(placement: .navigationBarTrailing) {
                    HStack {
                        Image(systemName: "gear")
                        Image(systemName: "house.fill")
                    }
                }
            }
//            .navigationBarHidden(true)
        }
    }
}

struct ToolbarPractice_Previews: PreviewProvider {
    static var previews: some View {
        ToolbarPractice()
    }
}
