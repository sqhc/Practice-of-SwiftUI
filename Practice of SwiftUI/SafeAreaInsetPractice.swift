//
//  SafeAreaInsetPractice.swift
//  Practice of SwiftUI
//
//  Created by 沈清昊 on 6/22/23.
//

import SwiftUI

struct SafeAreaInsetPractice: View {
    var body: some View {
        NavigationView{
            List(0..<10){ _ in
                Rectangle()
                    .frame(height: 300)
            }
            .navigationTitle("Safe Area Insets")
            .navigationBarTitleDisplayMode(.inline)
            .safeAreaInset(edge: .top, alignment: .leading, spacing: nil) {
                Text("Hi")
                    .frame(maxWidth: .infinity)
//                    .padding()
                    .background(Color.yellow.edgesIgnoringSafeArea(.bottom))
//                    .clipShape(Circle())
//                    .padding()
            }
            .safeAreaInset(edge: .bottom, alignment: .leading, spacing: nil) {
                Text("Hi")
                    .frame(maxWidth: .infinity)
//                    .padding()
                    .background(Color.yellow.edgesIgnoringSafeArea(.bottom))
//                    .clipShape(Circle())
//                    .padding()
            }
        }
    }
}

struct SafeAreaInsetPractice_Previews: PreviewProvider {
    static var previews: some View {
        SafeAreaInsetPractice()
    }
}
