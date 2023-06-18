//
//  SubmitTextFieldPractice.swift
//  Practice of SwiftUI
//
//  Created by 沈清昊 on 6/18/23.
//

import SwiftUI

struct SubmitTextFieldPractice: View {
    
    @State private var text: String = ""
    
    var body: some View {
        VStack {
            TextField("Placeholder...", text: $text)
                .submitLabel(.route)
                .onSubmit {
                    print("Something to the console!")
                }
            
            TextField("Placeholder...", text: $text)
                .submitLabel(.next)
                .onSubmit {
                    print("Something to the console!")
                }
            
            TextField("Placeholder...", text: $text)
                .submitLabel(.search)
                .onSubmit {
                    print("Something to the console!")
                }
        }
    }
}

struct SubmitTextFieldPractice_Previews: PreviewProvider {
    static var previews: some View {
        SubmitTextFieldPractice()
    }
}
