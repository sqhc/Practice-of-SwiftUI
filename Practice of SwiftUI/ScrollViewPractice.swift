//
//  ScrollView.swift
//  Practice of SwiftUI
//
//  Created by 沈清昊 on 4/10/23.
//

import SwiftUI

struct ScrollViewPractice: View {
    var body: some View {
        ScrollView{
            LazyVStack{
                ForEach(0..<10) { index in
                    ScrollView(.horizontal, showsIndicators: false) {
                        LazyHStack{
                            ForEach(0..<20) { index in
                                RoundedRectangle(cornerRadius: 25)
                                    .fill(Color.white)
                                    .frame(width: 200, height: 150)
                                    .shadow(radius: 10)
                                    .padding()
                            }
                        }
                    }
                }
            }
        }
    }
}

struct ScrollView_Previews: PreviewProvider {
    static var previews: some View {
        ScrollViewPractice()
    }
}
