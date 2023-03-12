//
//  ShapesView.swift
//  Practice of SwiftUI
//
//  Created by 沈清昊 on 3/11/23.
//

import SwiftUI

struct ShapesView: View {
    var body: some View {
        //Circle()
            //.fill(Color.blue)
            //.foregroundColor(.pink)
            //.stroke(Color.red)
            //.stroke(Color.blue, lineWidth: 30)
            //.stroke(Color.orange, style: StrokeStyle(lineWidth: 30, lineCap: .round, dash: [30]))
            //.trim(from: 0.2, to: 1.0)
            //.stroke(Color.purple, lineWidth: 50)
        //Ellipse()
        //Capsule(style: .circular)
        //Rectangle()
        RoundedRectangle(cornerRadius: 10)
            .frame(width: 300, height: 200)
    }
}

struct ShapesView_Previews: PreviewProvider {
    static var previews: some View {
        ShapesView()
    }
}
