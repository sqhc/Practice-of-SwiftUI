//
//  ActionSheetPractice.swift
//  Practice of SwiftUI
//
//  Created by 沈清昊 on 4/25/23.
//

import SwiftUI

struct ActionSheetPractice: View {
    
    @State var showActionSheet: Bool = false
    @State var dialogOptions: Options = .otherPost
    enum Options{
        case isMyPost
        case otherPost
    }
    
    var body: some View {
        VStack {
            HStack{
                Circle()
                    .frame(width: 30, height: 30)
                Text("@username")
                Spacer()
                Button {
                    dialogOptions = dialogOptions == .isMyPost ? .isMyPost : .otherPost
                    showActionSheet.toggle()
                } label: {
                    Image(systemName: "ellipsis")
                }
                .tint(.primary)
            }
            .padding(.horizontal)
            Rectangle()
                .aspectRatio(1.0, contentMode: .fit)
        }
        .confirmationDialog("This is title", isPresented: $showActionSheet) {
            switch dialogOptions {
            case .isMyPost:
                Button("Share", role: .cancel) {
                    
                }
            case .otherPost:
                Button("Like", role: .destructive) {
                    
                }
            }
        }
    }
}

struct ActionSheetPractice_Previews: PreviewProvider {
    static var previews: some View {
        ActionSheetPractice()
    }
}
