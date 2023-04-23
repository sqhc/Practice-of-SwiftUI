//
//  PopOverPractice.swift
//  Practice of SwiftUI
//
//  Created by 沈清昊 on 4/23/23.
//

import SwiftUI

struct PopOverPractice: View {
    
    @State var showNewScreen: Bool = false
    
    var body: some View {
        ZStack{
            Color.orange
                .edgesIgnoringSafeArea(.all)
            
            VStack{
                Button("Button") {
                    showNewScreen.toggle()
                }
                .font(.largeTitle)
                Spacer()
            }
            //Method 1: Sheet
//            .sheet(isPresented: $showNewScreen) {
//                NewScreen()
//            }
            
            //Method 2: Transition
//            ZStack{
//                if showNewScreen{
//                    NewScreen(showNewScreen: $showNewScreen)
//                        .transition(.move(edge: .bottom))
//                        .animation(.spring(), value: showNewScreen)
//                }
//            }
//            .zIndex(2.0)
            
            //Method 3: Animation Offset
            NewScreen(showNewScreen: $showNewScreen)
                .padding(.top, 100)
                .offset(y: showNewScreen ? 0 : UIScreen.main.bounds.height)
                .animation(.spring(), value: showNewScreen)
        }
    }
}

struct PopOverPractice_Previews: PreviewProvider {
    static var previews: some View {
        PopOverPractice()
    }
}

struct NewScreen: View{
    
    @Environment(\.presentationMode) var mode
    @Binding var showNewScreen: Bool
    
    var body: some View{
        ZStack(alignment: .topLeading){
            Color.purple
                .edgesIgnoringSafeArea(.all)
            
            Button {
                //mode.wrappedValue.dismiss()
                showNewScreen.toggle()
            } label: {
                Image(systemName: "xmark")
                    .foregroundColor(.white)
                    .font(.largeTitle)
                    .padding(20)
            }

        }
    }
}
