//
//  ExtractedFunctionsPractice.swift
//  Practice of SwiftUI
//
//  Created by 沈清昊 on 4/14/23.
//

import SwiftUI

struct ExtractedFunctionsPractice: View {
    
    @State var backgroundColor : Color = Color.pink
    
    var body: some View {
        ZStack{
            //background
            backgroundColor
                .edgesIgnoringSafeArea(.all)
            
            //content
            contentLayer
            
        }
    }
    
    var contentLayer: some View{
        VStack{
            Text("Title")
                .font(.largeTitle)
            Button {
                buttonPressed()
            } label: {
                Text("PRESS ME")
                    .font(.headline)
                    .foregroundColor(.white)
                    .padding()
                    .background(Color.black)
                    .cornerRadius(10)
            }

        }
    }
    
    func buttonPressed(){
        backgroundColor = Color.yellow
    }
}

struct ExtractedFunctionsPractice_Previews: PreviewProvider {
    static var previews: some View {
        ExtractedFunctionsPractice()
    }
}
