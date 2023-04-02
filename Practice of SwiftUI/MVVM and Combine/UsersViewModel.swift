//
//  UsersViewModel.swift
//  Practice of SwiftUI
//
//  Created by 沈清昊 on 4/2/23.
//

import Foundation
import Combine
import SwiftUI

class UsersViewModel: ObservableObject{
    @Published var users: [User] = []
    @Published var hasError = false
    @Published var error: UserError?
    @Published private(set) var isRefreshing = false
    
    private var bag = Set<AnyCancellable>()
    
    func fetchUsers(){
        let usersURLString = "https://jsonplaceholder.typicode.com/users"
        
        if let url = URL(string: usersURLString){
            isRefreshing = true
            URLSession.shared
                .dataTaskPublisher(for: url)
                .receive(on: DispatchQueue.main)
//                .map(\.data)
//                .decode(type: [User].self, decoder: JSONDecoder())
                .tryMap({res in
                    guard let response = res.response as? HTTPURLResponse,
                          response.statusCode >= 200 && response.statusCode <= 300 else{
                              throw UserError.invalidStatusCode
                          }
                    
                    let decoder = JSONDecoder()
                    guard let users = try? decoder.decode([User].self, from: res.data) else{
                        throw UserError.failedToDecode
                    }
                    return users
                })
                .sink{[weak self] res in
                    defer {self?.isRefreshing = false}
                    switch res{
                    case .failure(let error):
                        self?.hasError = true
                        self?.error = UserError.custom(error: error)
                    default: break
                    }
                }receiveValue: {[weak self] users in
                    self?.users = users
                }
                .store(in: &bag)
        }
    }
}

extension UsersViewModel{
    enum UserError: LocalizedError{
        case custom(error: Error)
        case failedToDecode
        case invalidStatusCode
        
        var errorDescription: String?{
            switch self{
            case .failedToDecode:
                return "Failed to decode response"
            case .custom(let error):
                return error.localizedDescription
            case .invalidStatusCode:
                return "Request fails within an invalid range"
            }
        }
    }
}
