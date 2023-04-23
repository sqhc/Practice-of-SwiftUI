//
//  SheetsPractice.swift
//  Practice of SwiftUI
//
//  Created by 沈清昊 on 4/23/23.
//

import SwiftUI

struct SheetsPractice: View {
    
    @State var showSheet: Bool = false
    
    var body: some View {
        ZStack{
            Color.green
                .edgesIgnoringSafeArea(.all)
            
            Button {
                showSheet.toggle()
            } label: {
                Text("Button")
                    .foregroundColor(.green)
                    .font(.headline)
                    .padding(20)
                    .background(Color.white.cornerRadius(10))
            }
            .fullScreenCover(isPresented: $showSheet, content: {
                secondScreen()
            })
//            .sheet(isPresented: $showSheet) {
//                secondScreen()
//            }

        }
    }
}


struct SheetsPractice_Previews: PreviewProvider {
    static var previews: some View {
        SheetsPractice()
    }
}


struct secondScreen: View{
    
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View{
        ZStack(alignment: .topLeading){
            Color.red
                .edgesIgnoringSafeArea(.all)
            
            Button {
                presentationMode.wrappedValue.dismiss()
            } label: {
                Image(systemName: "xmark")
                    .foregroundColor(.white)
                    .font(.largeTitle)
                    .padding(20)
            }
        }
    }
}
