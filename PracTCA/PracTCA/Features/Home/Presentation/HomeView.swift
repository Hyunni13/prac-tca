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
        VStack {
            HStack {
                Text("Friends")
                    .font(.system(size: 24))
                Spacer()
            }
            Spacer()
                .frame(height: 40)
            
            ScrollView {
                VStack(spacing: 20) {
                    ForEach(viewModel.store.state.users) { user in
                        HStack(alignment: .center, spacing: 10) {
                            Image(systemName: "person.crop.circle.fill")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 28, height: 28)
                            Text(user.name)
                                .font(.system(size: 16))
                            Spacer()
                        }
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
