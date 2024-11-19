//
//  HomeViewModel.swift
//  PracTCA
//
//  Created by James on 11/19/24.
//

import Combine
import Foundation

final class HomeViewModel: ObservableObject {
    
    @Published private(set) var users: [User] = []
    
    private let store = HomeStore()
    private var cancellables: Set<AnyCancellable> = []
    
    init() {
        bind()
    }
    
    func fetchUsers() {
        store.send(.loadUsers)
    }
    
    private func bind() {
        store.$state.sink { [weak self] newState in
            guard let self = self else { return }
            self.users = newState.users
        }
        .store(in: &cancellables)
    }
    
}
