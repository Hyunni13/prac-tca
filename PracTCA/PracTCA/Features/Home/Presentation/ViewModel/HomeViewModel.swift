//
//  HomeViewModel.swift
//  PracTCA
//
//  Created by James on 11/19/24.
//

import Foundation

final class HomeViewModel: ObservableObject {
    
    @Published var store = HomeStore(initialState: HomeState())
    
    init() {
        Logger.log(tag: .lifecycle)
        
        store.send(.loadUsers)
    }
    
}
