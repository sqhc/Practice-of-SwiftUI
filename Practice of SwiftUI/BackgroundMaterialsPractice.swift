//
//  BackgroundMaterialsPractice.swift
//  Practice of SwiftUI
//
//  Created by 沈清昊 on 6/7/23.
//

import SwiftUI

struct BackgroundMaterialsPractice: View {
    var body: some View {
        VStack{
            Spacer()
            
            VStack{
                RoundedRectangle(cornerRadius: 4)
                    .frame(width: 50, height: 4)
                    .padding()
                Spacer()
            }
            .frame(height: 350)
            .frame(maxWidth: .infinity)
            .background(.ultraThinMaterial)
            .cornerRadius(30)
        }
        .ignoresSafeArea()
        .background{
            Image("render")
        }
    }
}

struct BackgroundMaterialsPractice_Previews: PreviewProvider {
    static var previews: some View {
        BackgroundMaterialsPractice()
    }
}
