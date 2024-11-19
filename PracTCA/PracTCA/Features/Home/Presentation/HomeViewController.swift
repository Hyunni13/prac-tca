//
//  HomeViewController.swift
//  PracTCA
//
//  Created by James on 11/18/24.
//

import SwiftUI
import UIKit

final class HomeViewController: UIViewController {
    
    private lazy var viewModel: HomeViewModel = {
        return HomeViewModel()
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        initUI()
    }
    
    private func initUI() {
        view.backgroundColor = .blue
        
        let hostViewController = UIHostingController(
            rootView: HomeView(viewModel: getViewModel()))
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
    
    private func getViewModel() -> HomeViewModel {
        return viewModel
    }
    
}
