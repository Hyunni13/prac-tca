//
//  HomeStore.swift
//  PracTCA
//
//  Created by James on 11/19/24.
//

import Combine
import Foundation

final class HomeStore: ObservableObject {
    
    @Published private(set) var state: HomeState
    
    private let environment = HomeEnvironment()
    private var cancellables = Set<AnyCancellable>()
    
    init(initialState: HomeState) {
        self.state = initialState
    }
    
    func send(_ action: HomeAction) {
        if let effect = reduce(state: &state, action: action, environment: environment) {
            effect
                .receive(on: DispatchQueue.main)
                .sink(receiveValue: send)
                .store(in: &cancellables)
        }
    }
    
    private func reduce(
        state: inout HomeState,
        action: HomeAction,
        environment: HomeEnvironment
    ) -> AnyPublisher<HomeAction, Never>? {
        switch action {
        case .loadUsers:
            return environment.userService.fetchUsers()
                .map { .usersLoaded(.success($0)) }
                .catch { Just(.usersLoaded(.failure($0))) }
                .eraseToAnyPublisher()
        case .usersLoaded(let result):
            switch result {
            case .success(let response):
                state.users = response.data
                Logger.log(response, tag: .defaults)
            case .failure(let error):
                state.users = [User(id: 1, name: "sanghyun", email: "dev.sanghyun")]
                Logger.log(error, tag: .error)
            }
            
            return nil
        }
    }
    
}
