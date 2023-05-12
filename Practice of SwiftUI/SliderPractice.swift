//
//  SliderPractice.swift
//  Practice of SwiftUI
//
//  Created by 沈清昊 on 5/12/23.
//

import SwiftUI

struct SliderPractice: View {
    @State var sliderValue : Double = 3
    @State var color: Color = .red
    
    var body: some View {
        VStack {
            Text("Rating: ")
            Text(
                String(format: "%.1f", sliderValue)
                //"\(sliderValue)"
            )
            .foregroundColor(color)
//            Slider(value: $sliderValue)
//            Slider(value: $sliderValue, in: 0...100)
//            Slider(value: $sliderValue, in: 1...5, step: 0.5)
            Slider(
                value: $sliderValue,
                in: 1...5,
                step: 1.0,
                onEditingChanged: { (_) in
                    color = .green
                },
                minimumValueLabel: Text("1"),
                maximumValueLabel: Text("5"),
                label: {
                    Text("Title")
                }
            )
                .tint(.red)
        }
    }
}

struct SliderPractice_Previews: PreviewProvider {
    static var previews: some View {
        SliderPractice()
    }
}
