//
//  FocusStatePractice.swift
//  Practice of SwiftUI
//
//  Created by 沈清昊 on 6/18/23.
//

import SwiftUI

struct FocusStatePractice: View {
    
    enum OnboardingField: Hashable{
        case username
        case password
    }
    
//    @FocusState private var usernameInFocus: Bool
    @State private var username: String = ""
    
//    @FocusState private var passwordInFocus: Bool
    @State private var password: String = ""
    
    @FocusState private var fieldInFocus: OnboardingField?
    
    var body: some View {
        VStack {
            TextField("Add your name here...", text: $username)
                .focused($fieldInFocus, equals: .username)
//                .focused($usernameInFocus)
                .padding(.leading)
                .frame(height: 55)
                .frame(maxWidth: .infinity)
                .background(Color.gray.brightness(0.3))
                .cornerRadius(10)
            
            TextField("Add your password here...", text: $password)
                .focused($fieldInFocus, equals: .password)
//                .focused($passwordInFocus)
                .padding(.leading)
                .frame(height: 55)
                .frame(maxWidth: .infinity)
                .background(Color.gray.brightness(0.3))
                .cornerRadius(10)
            
            Button("SIGN UP 🔨") {
                let usernameIsValid = !username.isEmpty
                let passwordIsValid = !password.isEmpty
                if usernameIsValid && passwordIsValid{
                    print("SIGN UP")
                } else if usernameIsValid{
                    fieldInFocus = .password
//                    usernameInFocus = false
//                    passwordInFocus = true
                } else{
                    fieldInFocus = .username
//                    usernameInFocus = true
//                    passwordInFocus = false
                }
            }
            
//            Button("TOOGLE FOUCS STATE") {
//                usernameInFocus.toggle()
//            }
        }
        .padding(40)
//        .onAppear {
//            DispatchQueue.main.asyncAfter(deadline: .now() + 0.5) {
//                self.usernameInFocus = true
//            }
//        }
    }
}

struct FocusStatePractice_Previews: PreviewProvider {
    static var previews: some View {
        FocusStatePractice()
    }
}
