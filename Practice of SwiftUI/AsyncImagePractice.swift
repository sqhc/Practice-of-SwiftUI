//
//  AsyncImagePractice.swift
//  Practice of SwiftUI
//
//  Created by 沈清昊 on 6/7/23.
//

import SwiftUI

struct AsyncImagePractice: View {
    let url = URL(string: "https://picsum.photos/400")
    var body: some View {
        AsyncImage(url: url) { phase in
            switch phase{
            case .empty:
                ProfileView()
            case .success(let image):
                image
                    .resizable()
                    .scaledToFit()
                    .frame(width: 100, height: 100)
                    .cornerRadius(20)
            case .failure:
                Image(systemName: "questionmark")
                    .font(.headline)
            default:
                Image(systemName: "questionmark")
                    .font(.headline)
            }
        }
//        AsyncImage(url: url, content: { returnedImage in
//            returnedImage
//                .resizable()
//                .scaledToFit()
//                .frame(width: 100, height: 100)
//                .cornerRadius(20)
//        }, placeholder: {
//            ProgressView()
//        })
    }
}

struct AsyncImagePractice_Previews: PreviewProvider {
    static var previews: some View {
        AsyncImagePractice()
    }
}
