//
//  AlertPractice.swift
//  Practice of SwiftUI
//
//  Created by 沈清昊 on 4/25/23.
//

import SwiftUI

struct AlertPractice: View {
    @State var showAlert: Bool = false
    @State var background: Color = Color.yellow
    @State var alertTitle = ""
    @State var alertMessage = ""
    

    
    var body: some View {
        ZStack {
            background.edgesIgnoringSafeArea(.all)
            VStack {
                Button("BUTTON 1") {
                    alertTitle = "ERRO: Uploading video"
                    alertMessage = "The video could not be uploded"
                    showAlert.toggle()
                }
                Button("BUTTON 2") {
                    alertTitle = "🥳Successfully upload the video"
                    alertMessage = "Your video is public!"
                    showAlert.toggle()
                }
            }
            .alert(alertTitle, isPresented: $showAlert) {
                background(Color.red)
            } message: {
                Text(alertMessage)
            }
        }
    }
    
//    func getAlert()-> Alert{
//        return Alert(title: Text("This is the title"), message: Text("Here is the description"), primaryButton: .destructive(Text("Delete"), action: background = .red), secondaryButton: .cancel())
//    }
}

struct AlertPractice_Previews: PreviewProvider {
    static var previews: some View {
        AlertPractice()
    }
}
