//
//  AnimationTimingPractice.swift
//  Practice of SwiftUI
//
//  Created by 沈清昊 on 4/22/23.
//

import SwiftUI

struct AnimationTimingPractice: View {
    @State var isAnimating: Bool = false
    @State var scale = 10.0
    var body: some View {
        VStack{
            Button("Button") {
                isAnimating.toggle()
            }
            RoundedRectangle(cornerRadius: 20)
                .frame(width: isAnimating ? 350: 50, height: 100)
                .animation(.spring(
                    response: 0.5,
                    dampingFraction: 0.7,
                    blendDuration: 1.0), value: isAnimating)
//                .animation(.spring(), value: isAnimating)
                //.animation(Animation.linear(duration: scale), value: isAnimating)
            
//            RoundedRectangle(cornerRadius: 20)
//                .frame(width: isAnimating ? 350: 50, height: 100)
//                .animation(Animation.easeIn(duration: scale), value: isAnimating)
//
//            RoundedRectangle(cornerRadius: 20)
//                .frame(width: isAnimating ? 350: 50, height: 100)
//                .animation(Animation.easeInOut(duration: scale), value: isAnimating)
//
//            RoundedRectangle(cornerRadius: 20)
//                .frame(width: isAnimating ? 350: 50, height: 100)
//                .animation(Animation.easeOut(duration: scale), value: isAnimating)
        }
    }
}

struct AnimationTimingPractice_Previews: PreviewProvider {
    static var previews: some View {
        AnimationTimingPractice()
    }
}
