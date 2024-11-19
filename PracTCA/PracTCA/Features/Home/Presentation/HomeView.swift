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
        ScrollView(.vertical, showsIndicators: true) {
            VStack(spacing: 20) {
                ForEach(viewModel.store.state.users) { user in
                    HStack(alignment: .firstTextBaseline, spacing: 10) {
                        Text(user.id.description)
                        Text(user.name)
                        Text(user.email)
                        Spacer()
                    }
                }
            }
        }
        .padding()
    }
}


#Preview {
    HomeView(viewModel: HomeViewModel())
}
