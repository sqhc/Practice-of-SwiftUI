//
//  TextFieldPractice.swift
//  Practice of SwiftUI
//
//  Created by 沈清昊 on 5/1/23.
//

import SwiftUI

struct TextFieldPractice: View {
    
    @State var textFieldText = ""
    @State var dataArray = [String]()
    
    var body: some View {
        NavigationView {
            VStack {
                TextField("Type something here...", text: $textFieldText)
                    //.textFieldStyle(RoundedBorderTextFieldStyle())
                    .padding()
                    .background(Color.gray.opacity(0.3)
                        .cornerRadius(10))
                    .foregroundColor(.red)
                    .font(.headline)
                
                Button {
                    if checkText(){
                        saveText()
                    }
                } label: {
                    Text("Save".uppercased())
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(checkText() ? Color.blue : Color.gray)
                        .cornerRadius(10)
                        .foregroundColor(.white)
                        .font(.headline)
                }
                .disabled(!checkText())
                
                ForEach(dataArray, id: \.self) { data in
                    Text(data)
                }
                Spacer()
            }
            .padding()
            .navigationTitle("TextField Practice")
        }
    }
    
    func checkText()-> Bool{
        if textFieldText.count >= 3{
            return true
        }
        return false
    }
    
    func saveText(){
        dataArray.append(textFieldText)
        textFieldText = ""
    }
}

struct TextFieldPractice_Previews: PreviewProvider {
    static var previews: some View {
        TextFieldPractice()
    }
}
