//
//  ColorsView.swift
//  Practice of SwiftUI
//
//  Created by 沈清昊 on 3/11/23.
//

import SwiftUI

struct ColorsView: View {
    var body: some View {
        RoundedRectangle(cornerRadius: 25.0)
            .fill(
                //Color.primary
                //Color(#colorLiteral(red: 10, green: 9, blue: 0, alpha: 8))//The way to use color literal is different from older version of Xcode
                //Color(UIColor.secondarySystemBackground)
                Color("CustomColor")
                
            )
            .frame(width: 300, height: 200)
            //.shadow(radius: 10)
            .shadow(color: Color("CustomColor").opacity(0.3), radius: 10, x: -20, y: -20)
    }
}

struct ColorsView_Previews: PreviewProvider {
    static var previews: some View {
        ColorsView()
            
            
            
    }
}
