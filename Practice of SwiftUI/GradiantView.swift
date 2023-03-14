//
//  GradiantView.swift
//  Practice of SwiftUI
//
//  Created by 沈清昊 on 3/13/23.
//

import SwiftUI

struct GradiantView: View {
    var body: some View {
        RoundedRectangle(cornerRadius: 25.0)
            .fill(
//                LinearGradient(gradient: Gradient(colors: [Color.red, Color.green, Color.orange]),
//                    startPoint: .topLeading,
//                    endPoint: .topTrailing)
//                RadialGradient(
//                    gradient: Gradient(colors: [Color.purple, Color.blue]),
//                    center: .topLeading,
//                    startRadius: 5,
//                    endRadius: 400)
                AngularGradient(
                    gradient: Gradient(colors: [Color.blue, Color.brown]),
                    center: .topLeading,
                    angle: .degrees(180 + 45))
            )
            .frame(width: 300, height: 200)
    }
}

struct GradiantView_Previews: PreviewProvider {
    static var previews: some View {
        GradiantView()
    }
}
