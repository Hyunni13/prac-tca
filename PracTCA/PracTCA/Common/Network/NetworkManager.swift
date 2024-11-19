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
        let token = "eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiJ9.eyJhdWQiOiIyIiwianRpIjoiMWU5YTdjY2VkOGIzYjAwOWMyODBjMGJmNjVkN2RlMDlkNTEyNDhhYTkwM2QxZmVmZTE4MDAyNGMxY2U2NzJlY2Q1ZDJmMGFlNmFiOTg3MzkiLCJpYXQiOjE3MzE5OTMxNTIuNDk5NzE5LCJuYmYiOjE3MzE5OTMxNTIuNDk5NzIxLCJleHAiOjE3MzE5OTMxODIuNDk1OTk3LCJzdWIiOiIyNDMiLCJzY29wZXMiOltdfQ.AN4vHpn_1UIJT0OWbGA4hosSYLp5SX9GXdLbvaWHXf3eEVLZjsWsfFhfQrKOQ4UUOSCtzs7NzPYzgW-u60LbeaDtRnjLUBNHSEJm770N9EF1CqkfsGc7xE4s5HJUt_TCVohEnmC1cpwZGrCp_9a7gQr9_5GUQQDe5_QSnmRe8mC73Qaqs7B21bF7VPe76uwwI2Z6h08TKH4QzOOP1y0gjQkk_3V5OsMw9xcD7OmFe8SJdmrSEfQ8CuEIK1zuMjzqEXjoWNT0oe2equXIPnjWSs5S8lmHG7jSudU12iY3p7dpDfrwSnLU70GO_k-y0LAuCpYK4faFVmZyfhycNpwjUUIftz5L94lJlfSUsd__hDJ5BZ1Zi-G_kA688qtMFBNrHUzz4p5_8zgJviVjy_UuFrmHCvZ19NUe5SL21SAFWzS9SGeGd-W9VTSrNC2y3DSZbgSnLoIj5Ni59vw9gRtWzJzK0CFepUaHkBjwk4JDLHNC2Y_5W1axRTp9wAudU97mSd9-UVq91sQAJ1BTVfAigmp3_T0nVcQevDla62vFxwXLnP_egwm92Ad4orDv7t908s4INYy6iqYYkuALqWCGEAyFeKaI8Y4_bjmFfpnw7aEf8_uWwD0TtLco0gQRwOauLydr-kUi1144-ockGWP_5NiDIZeverjxVsg7VWXWUsE"
        
        return AF.request(url, method: .get, headers: ["Authorization": "Bearer \(token)"])
            .publishDecodable(type: UserDTO.self)
            .value()
            .mapError { $0 as Error }
            .eraseToAnyPublisher()
    }
    
}
