//
//  UserServices.swift
//  PracTCA
//
//  Created by James on 11/22/24.
//

import Alamofire
import Combine

final class UserServices {
    
    func fetchUsers() -> AnyPublisher<[User], AFError> {
        return NetworkClient.shared.request(.getUsers)
    }
    
}
