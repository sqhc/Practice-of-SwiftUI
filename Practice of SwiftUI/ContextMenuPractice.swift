//
//  ContextMenuPractice.swift
//  Practice of SwiftUI
//
//  Created by 沈清昊 on 5/1/23.
//

import SwiftUI

struct ContextMenuPractice: View {
    
    @State var backgroundColor: Color = .accentColor
    
    var body: some View {
        VStack(alignment: .leading, spacing: 10.0){
            Image(systemName: "house.fill")
                .font(.title)
            Text("Think swiftly")
                .font(.headline)
            Text("How to use ContextMenu")
                .font(.subheadline)
        }
        .foregroundColor(.white)
        .padding(30)
        .background(backgroundColor.cornerRadius(30))
        .contextMenu {
            Button {
                backgroundColor = .yellow
            } label: {
                Label("Share post", systemImage: "flame.fill")
            }

            Button {
                backgroundColor = .red
            } label: {
                Text("Report post")
            }

            Button {
                backgroundColor = .green
            } label: {
                HStack{
                    Text("Like post")
                    Image(systemName: "heart.fill")
                }
            }

        }
    }
}

struct ContextMenuPractice_Previews: PreviewProvider {
    static var previews: some View {
        ContextMenuPractice()
    }
}
