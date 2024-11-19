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
        VStack(spacing: 0) {
            Text(viewModel.users.debugDescription)
        }
    }
}


#Preview {
    HomeView(viewModel: HomeViewModel())
}
