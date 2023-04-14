//
//  StatePractice.swift
//  Practice of SwiftUI
//
//  Created by 沈清昊 on 4/14/23.
//

import SwiftUI

struct StatePractice: View {
    
    @State var backgroundColor: Color = Color.green
    @State var myTitle: String = "My Title"
    @State var count: Int = 0
    
    var body: some View {
        ZStack{
            //background
            backgroundColor
                .edgesIgnoringSafeArea(.all)
            
            // content
            VStack(spacing: 20){
                Text(myTitle)
                    .font(.title)
                Text("Count: \(count)")
                    .font(.headline)
                    .underline()
                
                HStack(spacing: 20){
                    Button("Button 1") {
                        backgroundColor = .red
                        myTitle = "The button #1 was tapped"
                        count += 1
                    }
                    
                    Button("Button 2") {
                        backgroundColor = .purple
                        myTitle = "The button #2 was pressed"
                        count -= 1
                    }
                }
            }
            .foregroundColor(.white)
        }
    }
}

struct StatePractice_Previews: PreviewProvider {
    static var previews: some View {
        StatePractice()
    }
}
