//
//  TransitionPractice.swift
//  Practice of SwiftUI
//
//  Created by 沈清昊 on 4/22/23.
//

import SwiftUI

struct TransitionPractice: View {
    
    @State var showViews: Bool = false
    
    var body: some View {
        ZStack(alignment: .bottom){
            VStack{
                Button("BUTTON") {
                    showViews.toggle()
                }
                Spacer()
            }
            if showViews{
                RoundedRectangle(cornerRadius: 30)
                    .frame(height: UIScreen.main.bounds.height * 0.5)
                    .transition(.asymmetric(
                        insertion: .move(edge: .leading),
                        removal: AnyTransition.opacity.animation(.easeInOut)))
                    .animation(.easeInOut, value: showViews)
            }
        }
        .edgesIgnoringSafeArea(.bottom)
    }
}

struct TransitionPractice_Previews: PreviewProvider {
    static var previews: some View {
        TransitionPractice()
    }
}
