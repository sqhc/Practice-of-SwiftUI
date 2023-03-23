//
//  IconView.swift
//  Practice of SwiftUI
//
//  Created by 沈清昊 on 3/23/23.
//

import SwiftUI

struct IconView: View {
    var body: some View {
        Image(systemName: "person.fill.badge.plus")
            .renderingMode(.original)
            .font(.largeTitle)
            //.resizable()
            //.aspectRatio(contentMode: .fit)
            //.scaledToFit()
            //.scaledToFill()
            //.font(.caption)
            //.font(.system(size: 200))
            //.foregroundColor(.red)
            //.frame(width: 300, height: 300)
            //.clipped()
    }
}

struct IconView_Previews: PreviewProvider {
    static var previews: some View {
        IconView()
    }
}
