//
//  TextView.swift
//  Practice of SwiftUI
//
//  Created by 沈清昊 on 3/11/23.
//

import SwiftUI

struct TextView: View {
    var body: some View {
        Text("Hello, World! This is Qingghao Shen, a person who is studying iOS coding. I wish I can become a developer who really has much experience.".capitalized)
            //.font(.body)
            //.fontWeight(.semibold)
            //.bold()
            //.underline()
//            .underline(true, color: .red)
//            .italic()
//            .strikethrough(true, color: .green)
        //.font(.system(size: 30, weight: .semibold, design: .serif))
            //.baselineOffset(-50.0)
            //.kerning(10.0)
            .multilineTextAlignment(.leading)
            .foregroundColor(.red)
            .frame(width: 200, height: 100, alignment: .center)
            .minimumScaleFactor(0.1)
    }
}

struct TextView_Previews: PreviewProvider {
    static var previews: some View {
        TextView()
    }
}
