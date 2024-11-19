//
//  HomeStore.swift
//  PracTCA
//
//  Created by James on 11/19/24.
//

import Combine
import Foundation

final class HomeStore: ObservableObject {
    
    @Published private(set) var state = HomeState()
    
    private let environment = HomeEnvironment()
    private var cancellables: Set<AnyCancellable> = []
    
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
            return environment.fetchUsers()
                .map { .usersLoaded(.success($0)) }
                .catch { Just(.usersLoaded(.failure($0))) }
                .eraseToAnyPublisher()
        case .usersLoaded(let result):
            switch result {
            case .success(let response):
                state.users = response.data
            case .failure:
                state.users = [User(id: -1, name: "nil", email: "nil")]
            }
            
            return nil
        }
    }
    
}
