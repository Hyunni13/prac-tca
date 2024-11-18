//
//  HomeViewController.swift
//  PracTCA
//
//  Created by James on 11/18/24.
//

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
    }
    
    private func getViewModel() -> HomeViewModel {
        return viewModel
    }
    
}
