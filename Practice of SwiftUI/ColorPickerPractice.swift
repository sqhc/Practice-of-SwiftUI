//
//  ColorPickerPractice.swift
//  Practice of SwiftUI
//
//  Created by 沈清昊 on 5/7/23.
//

import SwiftUI

struct ColorPickerPractice: View {
    @State var backgroundColor: Color = .green
    var body: some View {
        ZStack{
            backgroundColor
                .edgesIgnoringSafeArea(.all)
            
            ColorPicker("Select a color",
                        selection: $backgroundColor,
                        supportsOpacity: true)
                .padding()
                .background(Color.black)
                .cornerRadius(10)
                .foregroundColor(.white)
                .font(.headline)
                .padding(50)
        }
    }
}

struct ColorPickerPractice_Previews: PreviewProvider {
    static var previews: some View {
        ColorPickerPractice()
    }
}
