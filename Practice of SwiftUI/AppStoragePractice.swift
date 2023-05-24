//
//  AppStoragePractice.swift
//  Practice of SwiftUI
//
//  Created by 沈清昊 on 5/24/23.
//

import SwiftUI

struct AppStoragePractice: View {
    @AppStorage("name") var currentUserName: String?
    
    var body: some View {
        VStack(spacing: 20){
            Text(currentUserName ?? "Add Name Here")
            
            if let name = currentUserName{
                Text(name)
            }
            
            Button("Save".uppercased()) {
                let name = "Emily"
                currentUserName = name
            }
        }
    }
}

struct AppStoragePractice_Previews: PreviewProvider {
    static var previews: some View {
        AppStoragePractice()
    }
}
