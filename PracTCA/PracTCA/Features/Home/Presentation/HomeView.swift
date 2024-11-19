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
            
            Spacer()
                .frame(height: 200)
            
            Button("Fetch Users") {
                viewModel.fetchUser()
            }
        }
    }
}


#Preview {
    HomeView(viewModel: HomeViewModel())
}
