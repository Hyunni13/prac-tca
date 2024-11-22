//
//  HomeView.swift
//  PracTCA
//
//  Created by James on 11/19/24.
//

import SwiftUI

struct HomeView: View {
    @ObservedObject var viewModel: HomeViewModel
    
    var body: some View {
        Text(viewModel.store.state.users.debugDescription)
    }
}


#Preview {
    HomeView(viewModel: HomeViewModel())
}
