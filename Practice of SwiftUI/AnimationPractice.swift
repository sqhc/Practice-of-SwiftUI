//
//  AnimationPractice.swift
//  Practice of SwiftUI
//
//  Created by 沈清昊 on 4/22/23.
//

import SwiftUI

struct AnimationPractice: View {
    @State var isAnimated: Bool = false
    
    var body: some View {
        VStack{
            Button("Button") {
                withAnimation(
                    Animation
                        .default
                        .repeatForever(autoreverses: true)){
                    isAnimated.toggle()
                }
            }
            Spacer()
            RoundedRectangle(cornerRadius: isAnimated ? 50 : 25)
                .fill(isAnimated ? Color.red : Color.green)
                .frame(
                    width: isAnimated ? 100 : 300,
                    height: isAnimated ? 100 : 300)
                .rotationEffect(Angle(degrees: isAnimated ? 360 : 0))
                .offset(y: isAnimated ? 300 : 0)
            Spacer()
        }
    }
}

struct AnimationPractice_Previews: PreviewProvider {
    static var previews: some View {
        AnimationPractice()
    }
}
