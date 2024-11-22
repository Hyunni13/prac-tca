//
//  HomeViewModel.swift
//  PracTCA
//
//  Created by James on 11/19/24.
//

import Combine
import Foundation

final class HomeViewModel: ObservableObject {
    
    @Published private(set) var store = HomeStore()
    private var cancellables: Set<AnyCancellable> = []
    
    init() {
        store.$state.sink { [weak self] _ in
            guard let self = self else { return }
            self.objectWillChange.send()
        }
        .store(in: &cancellables)
    }
    
    func fetchUsers() {
        store.send(.loadUsers)
    }
    
}
