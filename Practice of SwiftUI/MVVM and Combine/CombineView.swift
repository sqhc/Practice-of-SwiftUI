//
//  CombineView.swift
//  Practice of SwiftUI
//
//  Created by 沈清昊 on 4/2/23.
//

import SwiftUI
import Combine

struct CombineView: View {
    @StateObject private var vm = UsersViewModel()
    
    var body: some View {
        NavigationView{
            ZStack{
                if vm.isRefreshing{
                    ProgressView()
                }
                else{
                    List {
                        ForEach( vm.users, id: \.id){ user in
                            UserView(user: user)
                                .listRowSeparator(.hidden)
                        }
                    }
                    .listStyle(.plain)
                    .navigationTitle("Users")
                }
            }
            .onAppear(perform: vm.fetchUsers)
            .alert(isPresented: $vm.hasError,
                   error: vm.error){
                Button(action: vm.fetchUsers){
                    Text("Retry")
                }
            }
        }
    }
}

struct CombineView_Previews: PreviewProvider {
    static var previews: some View {
        CombineView()
    }
}
