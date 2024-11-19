//
//  HomeStore.swift
//  PracTCA
//
//  Created by James on 11/19/24.
//

import Combine
import Foundation

class HomeStore: ObservableObject {
    
    @Published private(set) var state: HomeState
    
    private let environment = HomeEnvironment()
    private var cancellables = Set<AnyCancellable>()
    
    init(initialState: HomeState) {
        self.state = initialState
    }
    
    func send(_ action: HomeAction) {
//        if let effect = reduce(state: &state, action: action, environment: environment) {
//            effect
//                .receive(on: DispatchQueue.main)
//                .sink(receiveValue: send)
//                .store(in: &cancellables)
//        }
    }
    
    private func reduce(
        state: inout HomeState,
        action: HomeAction,
        environment: HomeEnvironment
//    ) -> AnyPublisher<HomeAction, Never>? {
    ) {
        switch action {
        case .loadUsers:
            return
        case .usersLoaded:
            return
        }
    }
    
}
