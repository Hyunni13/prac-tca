//
//  User.swift
//  PracTCA
//
//  Created by James on 11/19/24.
//

struct User: Decodable, Identifiable {
    let id: Int
    let name: String
    let email: String
}
