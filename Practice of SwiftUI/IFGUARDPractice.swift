//
//  IFGUARDPractice.swift
//  Practice of SwiftUI
//
//  Created by 沈清昊 on 5/18/23.
//

import SwiftUI

struct IFGUARDPractice: View {
    @State var currentUserID: String? = nil
    @State var displayText: String? = nil
    @State var isLoading: Bool = false
    
    var body: some View {
        NavigationView{
            VStack{
                Text("Here we are practicing safe coding")
                if let text = displayText{
                    Text(text)
                        .font(.title)
                }
                // DO NOT USE ! EVER!
                // Don't Force Unwrap Values
//                Text(displayText!)
//                    .font(.title)
                
                if isLoading{
                    ProgressView()
                }
                Spacer()
            }
            .navigationTitle("Safe coding")
            .onAppear(perform: loadData)
        }
    }
    
    func loadData(){
        if let currentUserID = currentUserID {
            isLoading = true
            DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
                displayText = "This is the new data! User id is: \(currentUserID)"
                isLoading = false
            }
        }
        else{
            displayText = "ERROR: There is no user ID!"
        }
    }
    
    func loadData2(){
        guard let userID = currentUserID else {
            displayText = "ERROR: There is no user ID!"
            return
        }
        isLoading = true
        DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
            displayText = "This is the new data! User id is: \(userID)"
            isLoading = false
        }
    }
}

struct IFGUARDPractice_Previews: PreviewProvider {
    static var previews: some View {
        IFGUARDPractice()
    }
}
