//
//  UserModel.swift
//  Practice of SwiftUI
//
//  Created by 沈清昊 on 4/2/23.
//

import Foundation

struct User: Codable{
    let id: Int
    let name: String
    let email: String
    let company: Company
}

struct Company: Codable{
    let name: String
}
