//
//  TernaryPractice.swift
//  Practice of SwiftUI
//
//  Created by 沈清昊 on 4/16/23.
//

import SwiftUI

struct TernaryPractice: View {
    
    @State var isStartingState: Bool = false
    
    var body: some View {
        VStack{
            Button("Button: \(isStartingState.description)") {
                isStartingState.toggle()
            }
            
            Text(isStartingState ? "STARTING STATE!!!" : "ENDINH STATE!!!")
            
            RoundedRectangle(cornerRadius: isStartingState ? 25.0 : 0)
                .fill(isStartingState ? Color.red : Color.blue)
                .frame(
                    width: isStartingState ? 200 : 50,
                    height: isStartingState ? 400: 50)
            
            Spacer()
        }
    }
}

struct TernaryPractice_Previews: PreviewProvider {
    static var previews: some View {
        TernaryPractice()
    }
}
