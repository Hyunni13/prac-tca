//
//  Endpoints.swift
//  PracTCA
//
//  Created by James on 11/22/24.
//

import Alamofire

enum Endpoint {
    case getUsers
    
    var url: String {
        switch self {
        case .getUsers:
            return NetworkClient.baseUrl + "users/"
        }
    }
    
    var method: HTTPMethod {
        switch self {
        case .getUsers:
            return .get
        }
    }
}
