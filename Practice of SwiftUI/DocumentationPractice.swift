//
//  DocumentationPractice.swift
//  Practice of SwiftUI
//
//  Created by 沈清昊 on 5/14/23.
//

import SwiftUI

struct DocumentationPractice: View {
    
    // MARK: Properties
    
    @State var data: [String] = [
        "Apples", "Oranges", "Bananas"
    ]
    @State var showAlert: Bool = false
    
    //MARK: Body
    
    // Working copy - things to do:
    /*
        1) Fix title
        2) Fix alert
     */
    
    var body: some View {
        NavigationView{ // START: Nav
            ZStack {
                
                // Background
                Color.red.ignoresSafeArea()
                
                // Foreground
                foregroundLayer
                .navigationTitle("Documentation")
                .toolbar {
                    Button("Alert") {
                        showAlert.toggle()
                    }
                }
                .alert("This is the alert", isPresented: $showAlert) {
                    Button {
                        
                    } label: {
                        Text("Cancel")
                    }
                }
            }
        } // END: Nav
    }
    
    /// This is the foreground layer that holds a scroll view
    private var foregroundLayer: some View{
        ScrollView{ // START: ScrollV
            Text("Hello")
            ForEach(data, id: \.self) { name in
                Text(name)
                    .font(.headline)
            }
        } // END: ScrollV
    }
    
    //MARK: Functions
}

//MARK: Preview View

struct DocumentationPractice_Previews: PreviewProvider {
    static var previews: some View {
        DocumentationPractice()
    }
}
