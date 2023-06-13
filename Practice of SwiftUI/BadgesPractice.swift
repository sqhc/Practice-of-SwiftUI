//
//  BadgesPractice.swift
//  Practice of SwiftUI
//
//  Created by 沈清昊 on 6/13/23.
//

import SwiftUI

// List
// TabView

struct BadgesPractice: View {
    var body: some View {
        List{
            Text("Hello world")
                .badge(5)
            Text("Hello world")
            Text("Hello world")
            Text("Hello world")
        }
//        TabView{
//            Color.red
//                .tabItem {
//                    Image(systemName: "heart.fill")
//                    Text("Hello")
//                }
//                .badge("New")
//
//            Color.green
//                .tabItem {
//                    Image(systemName: "heart.fill")
//                    Text("Hello")
//                }
//
//            Color.blue
//                .tabItem {
//                    Image(systemName: "heart.fill")
//                    Text("Hello")
//                }
//        }
    }
}

struct BadgesPractice_Previews: PreviewProvider {
    static var previews: some View {
        BadgesPractice()
    }
}
