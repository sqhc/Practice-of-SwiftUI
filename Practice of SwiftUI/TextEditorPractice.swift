//
//  TextEditorPractice.swift
//  Practice of SwiftUI
//
//  Created by 沈清昊 on 5/6/23.
//

import SwiftUI

struct TextEditorPractice: View {
    @State var textEditorText: String = "This is the starting text"
    @State var savedText: String = ""
    
    var body: some View {
        NavigationView{
            VStack{
                TextEditor(text: $textEditorText)
                    .frame(height: 250)
                    .colorMultiply(.gray)
                Button {
                    savedText = textEditorText
                } label: {
                    Text("save".uppercased())
                        .font(.headline)
                        .foregroundColor(.white)
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(Color.blue)
                        .cornerRadius(10)
                }
                Text(savedText)
                Spacer()
            }
            .padding()
            //.background(Color.green)
            .navigationTitle("TextEditor practice")
        }
    }
}

struct TextEditorPractice_Previews: PreviewProvider {
    static var previews: some View {
        TextEditorPractice()
    }
}
