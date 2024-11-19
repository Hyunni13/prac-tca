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
        let token = "eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiJ9.eyJhdWQiOiIyIiwianRpIjoiMjA0NzZiY2EzMDRjNDk5MWQ4MTFkYTZiMjU1OTdmNTM0NDBkODRkNTY0MjM2NjRhZWEzNGYyOTQ2M2JiODY4MGYyNzhmMWIwYmMzYWIwNmUiLCJpYXQiOjE3MzE5Nzk1NTQuMzg2MjgxLCJuYmYiOjE3MzE5Nzk1NTQuMzg2MjgyLCJleHAiOjE3MzE5Nzk1ODQuMzgyNTk4LCJzdWIiOiIyNDMiLCJzY29wZXMiOltdfQ.FF75KXAyFFeuE70Ujc3ge-hROaGwWKE4UY98lzFrlkYoqWI7fa8vRVECokLXkeBMF3BEIixlMGFGKPaAXljhQz5fRqXAFf2VFF3tI5n0AvTyGyG-DoNEd8GBQekoShSR46pJevQS61MvEy2HUKUktvcVjtVOAQbDJx611jYwiIgX56g5qb4zpKO-xqHy5l2iCMxMEpWyE_BGq4qwd2bv1ZebTj1AIowwJFyFrO7uUW1f1pHXDhVu32XcrfFIYCJVWLZ8TMxFx4RDKbvP3NeUFfdlDVgIQwEi7QGip9YWJw0KYGVg-OQKQTTTVapSguTl-XtRuFSIE2mC6f7aej_idY_R9Il6t_zyRMU0hF8KrhREA6SMEI-3-m_8a9k5tDJ6tmq3XHS-D1NSkxlpBJDiM4N_ZhvfliPkW9tXd0F7EwT_t-nxFjdstwe2zBTQiRPzUiDOULrNjHyhZpz948tfptwtN1niVcliCMPE1e-XG1bjhv4Z6ZY-ksFsGn1OncXZYhbZrgnVao-JgQ9bMSBl7qJ0ugdAcHHr-ALakUnbA6MGIVugcU-HsnAlCVqmaYfeEJnjnYMb1THYZGJ-smKXqRrzVDC0B8YydCgL9TOIFibfqT2va5whSXezvWbA6gUmSnkx0-g5bHh_qo26OZRy7F4uwclOmfoM63xGWLiPmIE"
        
        return AF.request(url, method: .get, headers: ["Authorization": "Bearer \(token)"])
            .publishDecodable(type: UserDTO.self)
            .value()
            .mapError { $0 as Error }
            .eraseToAnyPublisher()
    }
    
}
