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
    
//    func fetchUsers() -> AnyPublisher<[User], Error> {
    func fetchUsers() {
        let url = "https://phplaravel-574671-2229990.cloudwaysapps.com/api/user/all"
        let token = "eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiJ9.eyJhdWQiOiIyIiwianRpIjoiMDI4ODlhZjExNzg4NmZiYmMxNGNlMjJlNmJmY2M5ZjNkZDBlNDJlMjdiYWQ3MDI1YTYzZTYyOTgzZjEyN2U1NjQ5YjAzZGE3ODE3ZjBmMTIiLCJpYXQiOjE3MzE5Nzg0OTAuMjcxNDMxLCJuYmYiOjE3MzE5Nzg0OTAuMjcxNDMzLCJleHAiOjE3MzE5Nzg1MjAuMjY3Njk1LCJzdWIiOiIyNDMiLCJzY29wZXMiOltdfQ.EJgLw-uIrb7T_qpz4hnHhR8K2tgUMT26R4ChNFeUOhgndloBLrNaqV7by0IVVqWFjb7zdgKJthhI23MzbfYaAfofvMfIAl4lnSRk-OD6vxDvP5gA8VxJ7IhazTVYYlXiwdaRI6iqXJjq1b7PP8-2aNEEKXxhK3XinGLYjDGVMpH1W33T1T7gwtTKXZcOKLzPhx-319RvGqaZcxyE2rndm9cnv9hPUvnd3Bni8HCAJOoKu4xijdvRfKF_MLzdEUDhT6nmNZzW5hWeA5Kvj9zbvRjndrAAG_hDEv8eXL1a-QFRjYRBJNl-IhkHZ4s1E0Pfr8mJWkmaKmS_fQkNuqlp1z7OBYr4KzLYu4p3GJrrTc05P2YUPID8EuasZfcqmMEVmftmJ_LRK7k6jgb4-962ysYElQsqD27_uEmz08uiP90KzRerEg4nVKk6I6QFGGv8UHJav1sw_8p9aixBxpmDGf6KXzx2SGJJRy_dmEhDirdGF5_cJmuAYoeBbXHHt2zuwemzVSkbApLrcNvObFB0Hciss6mbhVw-cUxDngC4DVafNTstuPt3qfiZaw9xnsQ6_W7A9L2xKbrymCHYslixBwjYmkzEQwtQDV2fak6EHPhZU9U-Vw4_I4lCYu5619eu_UalsZOndkPxXP1kyge2wQ2FfSXdhBD744M1CvCyaJA"
        
        AF.request(url, method: .get, headers: ["Authorization": "Bearer \(token)"])
            .responseDecodable(of: UserDTO.self) { response in
                dump(response)
            }
//            .publishDecodable(type: [User].self)
//            .value()
//            .mapError { $0 as Error }
//            .eraseToAnyPublisher()
    }
    
}
