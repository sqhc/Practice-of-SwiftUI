//
//  SpacerView.swift
//  Practice of SwiftUI
//
//  Created by 沈清昊 on 4/2/23.
//

import SwiftUI

struct SpacerView: View {
    var body: some View {
        VStack {
            HStack(spacing: 0){
                Image(systemName: "xmark")
                Spacer()
                    .frame(height: 10)
                    .background(Color.orange)
                Image(systemName: "gear")
                    
            }
            .font(.title)
            //.background(Color.yellow)
            .padding(.horizontal)
            //.background(Color.blue)
            
            Spacer()
            
            Rectangle()
                .frame(height: 55)
        }
    }
}

struct SpacerView_Previews: PreviewProvider {
    static var previews: some View {
        SpacerView()
    }
}
