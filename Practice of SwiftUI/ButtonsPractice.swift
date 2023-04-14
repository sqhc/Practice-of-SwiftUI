//
//  ButtonsPractice.swift
//  Practice of SwiftUI
//
//  Created by 沈清昊 on 4/14/23.
//

import SwiftUI

struct ButtonsPractice: View {
    @State var title: String = "This is my title"
    
    var body: some View {
        VStack(spacing: 20) {
            Text(title)
            Button("Press me!") {
                self.title = "Button was Pressed"
            }
            .tint(.red)
            
            Button {
                self.title = "Button #2 was Pressed"
            } label: {
                Text("Save".uppercased())
                    .font(.headline)
                    .fontWeight(.semibold)
                    .foregroundColor(.white)
                    .padding()
                    .padding(.horizontal, 20)
                    .background(
                        Color.blue
                            .cornerRadius(10)
                            .shadow(radius: 10)
                    )
            }
            
            Button {
                self.title = "Button #3 was Pressed"
            } label: {
                Circle()
                    .fill(Color.white)
                    .frame(width: 75, height: 75)
                    .shadow(radius: 10)
                    .overlay(
                        Image(systemName: "heart.fill")
                            .font(.largeTitle)
                            .foregroundColor(Color.pink)
                    )
            }

            Button {
                self.title = "Button #4 was Pressed"
            } label: {
                Text("Finish".uppercased())
                    .font(.caption)
                    .bold()
                    .foregroundColor(.gray)
                    .padding()
                    .padding(.horizontal, 10)
                    .background(
                        Capsule()
                            .stroke(Color.gray, lineWidth: 2.0)
                    )
            }

        }
    }
}

struct ButtonsPractice_Previews: PreviewProvider {
    static var previews: some View {
        ButtonsPractice()
    }
}
