//
//  HomeEnvironment.swift
//  PracTCA
//
//  Created by James on 11/19/24.
//

struct HomeEnvironment {
    var userService: UserService = UserService()
}


struct UserService {
    var fetchUsers: () -> Void = NetworkManager.shared.fetchUsers
}
