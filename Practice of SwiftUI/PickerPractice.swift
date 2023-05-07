//
//  PickerPractice.swift
//  Practice of SwiftUI
//
//  Created by 沈清昊 on 5/7/23.
//

import SwiftUI

struct PickerPractice: View {
    @State var selection: String = "Most Recent"
    let filterOptions = [
        "Most Recent", "Most Popular", "Most Liked"
    ]
    
    init(){
        UISegmentedControl.appearance().selectedSegmentTintColor = UIColor.red
        let attributes : [NSAttributedString.Key: Any] = [
            .foregroundColor : UIColor.white
        ]
        UISegmentedControl.appearance().setTitleTextAttributes(attributes, for: .selected)
    }
    
    var body: some View {
        
        Picker(selection: $selection,
               content: {
            ForEach(filterOptions, id: \.self) { option in
                Text(option)
                    .tag(option)
            }
        },
               label: {
            HStack{
                Text("picker")
            }
        })
            .pickerStyle(SegmentedPickerStyle())
        
//        Picker(selection: $selection) {
//            ForEach(filterOptions, id: \.self) { filter in
//                HStack {
//                    Text(filter)
//                    Image(systemName: "heart.fill")
//                }
//                .tag(filter)
//            }
//        } label: {
//            HStack{
//                Text("Filter:")
//                Text(selection)
//            }
//            .font(.headline)
//            .foregroundColor(.white)
//            .padding()
//            .padding(.horizontal)
//            .background(Color.blue)
//            .cornerRadius(10)
//            .shadow(color: Color.blue.opacity(0.3), radius: 10, x: 0, y: 10)
//        }
//        .pickerStyle(MenuPickerStyle())
        
//        VStack {
//            HStack{
//                Text("Age:")
//                Text(selection)
//            }
//            Picker("Picker", selection: $selection) {
//                ForEach(18..<100) { int in
//                    Text("\(int)")
//                        .font(.headline)
//                        .foregroundColor(.red)
//                        .tag("\(int)")
//                }
//            }
//            .pickerStyle(WheelPickerStyle())
//        }
    }
}

struct PickerPractice_Previews: PreviewProvider {
    static var previews: some View {
        PickerPractice()
    }
}
