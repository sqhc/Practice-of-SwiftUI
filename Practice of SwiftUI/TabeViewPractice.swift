//
//  TabeViewPractice.swift
//  Practice of SwiftUI
//
//  Created by 沈清昊 on 5/13/23.
//

import SwiftUI

struct TabeViewPractice: View {
    @State var selectedTab = 0
    
    let icons: [String] = [
        "heart.fill", "globe", "house.fill", "person.fill"
    ]
    
    var body: some View {
        TabView {
            ForEach(icons, id: \.self) { icon in
                Image(systemName: icon)
                    .resizable()
                    .scaledToFit()
                    .padding(30)
            }
        }
        .background(RadialGradient(gradient: Gradient(colors: [Color.red, Color.blue]), center: .center, startRadius: 5, endRadius: 300))
        .frame(height: 300)
        .tabViewStyle(PageTabViewStyle())
//        TabView(selection: $selectedTab) {
//            HomeView(selectTab: $selectedTab)
//                .tabItem {
//                    Image(systemName: "house.fill")
//                    Text("Home")
//                }
//                .tag(0)
//            Text("Browse Tab")
//                .tabItem {
//                    Image(systemName: "globe")
//                    Text("Browse")
//                }
//                .tag(1)
//            Text("Profile tab")
//                .tabItem {
//                    Image(systemName: "person.fill")
//                    Text("Profile")
//                }
//                .tag(2)
//        }
    }
}

struct TabeViewPractice_Previews: PreviewProvider {
    static var previews: some View {
        TabeViewPractice()
    }
}

struct HomeView : View{
    @Binding var selectTab: Int
    
    var body: some View{
        ZStack{
            Color.red.ignoresSafeArea()
            VStack{
                Text("Home Tab")
                    .font(.largeTitle)
                    .foregroundColor(.white)
                
                Button {
                    selectTab = 2
                } label: {
                    Text("Go to profile")
                        .font(.headline)
                        .padding()
                        .padding(.horizontal)
                        .background(Color.white)
                        .cornerRadius(10)
                }
            }
        }
    }
}
