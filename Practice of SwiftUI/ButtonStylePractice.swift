//
//  ButtonStylePractice.swift
//  Practice of SwiftUI
//
//  Created by 沈清昊 on 6/11/23.
//

import SwiftUI

struct ButtonStylePractice: View {
    var body: some View {
        VStack{
            
            Button {
                
            } label: {
                Text("Button title")
                    .frame(height: 55)
                    .frame(maxWidth: .infinity)
            }
            .controlSize(.large)
            .buttonBorderShape(.roundedRectangle(radius: 20))
            .buttonStyle(.borderedProminent)
            
            Button("Button Title") {
                
            }
            .frame(height: 55)
            .frame(maxWidth: .infinity)
//            .buttonStyle(.plain)
            .controlSize(.large)
            .buttonStyle(.borderedProminent)
            
            Button("Button Title") {
                
            }
            .frame(height: 55)
            .frame(maxWidth: .infinity)
            .controlSize(.regular)
//            .buttonStyle(.bordered)
            .buttonStyle(.borderedProminent)
            
            Button("Button Title") {
                
            }
            .frame(height: 55)
            .frame(maxWidth: .infinity)
            .controlSize(.small)
            .buttonStyle(.borderedProminent)
            
            Button("Button Title") {
                
            }
            .frame(height: 55)
            .frame(maxWidth: .infinity)
//            .buttonStyle(.borderless)
            .controlSize(.mini)
            .buttonStyle(.borderedProminent)
        }
    }
}

struct ButtonStylePractice_Previews: PreviewProvider {
    static var previews: some View {
        ButtonStylePractice()
    }
}
