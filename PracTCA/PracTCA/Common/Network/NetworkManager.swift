//
//  NetworkManager.swift
//  PracTCA
//
//  Created by James on 11/19/24.
//

import Alamofire
import Combine

final class NetworkManager {
    
    static let shared = NetworkManager()
    
    private init() { }
    
    func fetchUsers() -> AnyPublisher<UserDTO, Error> {
        let url = "https://phplaravel-574671-2229990.cloudwaysapps.com/api/user/all"
        let token = "eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiJ9.eyJhdWQiOiIyIiwianRpIjoiNGNiMjE1YWQ2YzI4ZTU3OWI5MmRkYzJjZmZkYjM1NzNlZGEzYjFhOGJmOTQ4YzgwM2I2MzdiOTY5MDQ0MmFlNzY1ZDk3OTdjODgxZmJkZjgiLCJpYXQiOjE3MzIwMTUxNjAuODUyOTUxLCJuYmYiOjE3MzIwMTUxNjAuODUyOTU0LCJleHAiOjE3MzIwMTUxOTAuODQ4ODYsInN1YiI6IjI0MyIsInNjb3BlcyI6W119.LR60aMpngFK-MyQK5tnorEwjFNfwfFPLsJc2t4V8NP2Lt-QItCJ79vaAU3RcgwjWLyDd32g0Hu-jiFBu_7M1slGe7FUbH9av9vfSyq0ho4c7ZNuaiLYDms1DTlZI-387_AM0yWbBvwMLKJ9_HPttEOnmQSBmvXMfMmIVntqfhV2BWiNZcRWbBM0TfpGxZmbxWpIluIJJPIpRhZeP9CaTkf5YHXMgJsE0w3Sy_QsgBLjLe7ryr9PiiQTjGJfwaOrTBhTdDCMDVdOMJctrbeW3d-TSFLDmJ4OnSj88IkmGzDohYquQMLsaA44EPGeluwgDpdtYfkZl38SXCoMFApt7zb3_lHW_urttxvsoczk4hyYlIjfu974utFV8lg7sqEZULtx0nl8r3Qck3uVGkYURYBqjHo37mL3ZvSGdqDKGhmOO9jAeiQitRHq7Ytfb6DQkoDqrLiMcgRg28B9jjYzzJx-6_JOYtfymFkgl5N7s36NW0AyBmFb-hDamGAE6H9G37IkOI4rSygV2VUQnUA0dLMNgmEK1pqodSnqsaT82d5DwQ2xeUSuhRfA4TxYkXP5kppXGz66wG42OdE6S3q0vvVLWKS79SEpTqf818X-Snjhwcua5-2kwXezyBEOp3EHGootEnJa6YCiKuPTaCLVfIL7LlUUFrBYUEZtiPS4jSRE"
        
        return AF.request(url, method: .get, headers: ["Authorization": "Bearer \(token)"])
            .publishDecodable(type: UserDTO.self)
            .value()
            .mapError { $0 as Error }
            .eraseToAnyPublisher()
    }
    
}
