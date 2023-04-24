//
//  NavigationViewPractice.swift
//  Practice of SwiftUI
//
//  Created by 沈清昊 on 4/23/23.
//

import SwiftUI

struct NavigationViewPractice: View {
    var body: some View {
        NavigationView{
            ScrollView{
                NavigationLink("Hello World!", destination: MyOtherScreen())
                
                Text("Hello, World!")
                Text("Hello, World!")
                Text("Hello, World!")
            }
            .navigationTitle("All Inboxes")
//            .navigationBarTitleDisplayMode(.automatic)
//            .navigationBarHidden(true)
            .toolbar {
                ToolbarItemGroup(placement: .bottomBar){
                    HStack {
                        Image(systemName: "person.fill")
                        Image(systemName: "flame.fill")
                    }
                    NavigationLink {
                        MyOtherScreen()
                    } label: {
                        Image(systemName: "gear")
                    }
                    .tint(.red)

                }
            }
        }
    }
}

struct NavigationViewPractice_Previews: PreviewProvider {
    static var previews: some View {
        NavigationViewPractice()
    }
}

struct MyOtherScreen: View{
    
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View{
        ZStack{
            Color.green.edgesIgnoringSafeArea(.all)
                .navigationTitle("Green Screen!")
                .navigationBarHidden(true)
            VStack{
                Button("Back button") {
                    presentationMode.wrappedValue.dismiss()
                }
                NavigationLink("Click Here!", destination: Text("3rd Screen!"))
            }
        }
    }
}
