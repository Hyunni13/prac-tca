//
//  HomeViewController.swift
//  PracTCA
//
//  Created by James on 11/18/24.
//

import SwiftUI

final class HomeViewController: UIViewController {
    
    private let viewModel: HomeViewModel = HomeViewModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        Logger.log(tag: .lifecycle)
        
        initUI()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        Logger.log(tag: .lifecycle)
        
        viewModel.fetchUsers()
    }
    
    private func initUI() {
        view.backgroundColor = .blue
        
        let hostViewController = UIHostingController(rootView: HomeView(viewModel: viewModel))
        hostViewController.view.translatesAutoresizingMaskIntoConstraints = false
        
        addChild(hostViewController)
        view.addSubview(hostViewController.view)
        hostViewController.didMove(toParent: self)
        
        NSLayoutConstraint.activate([
            hostViewController.view.topAnchor.constraint(equalTo: view.topAnchor),
            hostViewController.view.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            hostViewController.view.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            hostViewController.view.trailingAnchor.constraint(equalTo: view.trailingAnchor),
        ])
    }
    
}
