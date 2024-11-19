//
//  HomeEnvironment.swift
//  PracTCA
//
//  Created by James on 11/19/24.
//

import Combine

struct HomeEnvironment {
    var userService: UserService = UserService()
}


struct UserService {
    var fetchUsers: () -> AnyPublisher<UserDTO, any Error> = NetworkManager.shared.fetchUsers
}
