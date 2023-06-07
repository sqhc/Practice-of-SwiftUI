//
//  OnAppearPractice.swift
//  Practice of SwiftUI
//
//  Created by 沈清昊 on 5/14/23.
//

import SwiftUI

struct OnAppearPractice: View {
    
    @State var myText : String = "Start text."
    @State var count: Int = 0
    
    var body: some View {
        NavigationView{
            ScrollView{
                Text(myText)
                LazyVStack{
                    ForEach(0..<50) { _ in
                        RoundedRectangle(cornerRadius: 25.0)
                            .frame( height: 200)
                            .padding()
                            .onAppear {
                                count += 1
                            }
                    }
                }
            }
            .onAppear(perform: {
                DispatchQueue.main.asyncAfter(deadline: .now() + 5) {
                    myText = "This is the new text!"
                }
            })
            .onDisappear(perform: {
                myText = "Ending text"
            })
            .navigationTitle("On Appear: \(count)")
        }
    }
}

struct OnAppearPractice_Previews: PreviewProvider {
    static var previews: some View {
        OnAppearPractice()
    }
}