//
//  NetworkManager.swift
//  PracTCA
//
//  Created by James on 11/19/24.
//

import Alamofire
import Combine

final class NetworkClient {
    
    static let baseUrl = "https://koreanjson.com/"
    static let shared = NetworkClient()
    
    private init() { }
    
    func request<T: Decodable>(_ endpoint: Endpoint) -> AnyPublisher<T, AFError> {
        AF.request(endpoint.url, method: endpoint.method)
            .publishDecodable(type: T.self)
            .value()
    }
    
}
