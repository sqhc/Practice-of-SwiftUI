//
//  ResizeableSheetPractice.swift
//  Practice of SwiftUI
//
//  Created by 沈清昊 on 6/22/23.
//

import SwiftUI

struct ResizeableSheetPractice: View {
    
    @State private var showSheet: Bool = false
    
    var body: some View {
        Button("Click me:") {
            showSheet.toggle()
        }
        .sheet(isPresented: $showSheet) {
            MyNextView()
                
        }
    }
}

struct MyNextView: View{
    
    var body: some View{
        Text("Hello world!!!!")
    }
}

struct ResizeableSheetPractice_Previews: PreviewProvider {
    static var previews: some View {
        ResizeableSheetPractice()
    }
}
