//
//  HomeCoordinator.swift
//  app-notifica-ifb
//
//  Created by Guilherme Delfino on 14/12/23.
//

import Foundation
import UIKit

class HomeCoordinator: Coordinator {
    
    private let navigationController: UINavigationController
    
    lazy var homeViewController: HomeViewController = {
        let viewModel = HomeViewModel(coordinator: self)
        let viewController = HomeViewController(viewModel: viewModel)
        viewController.tabBarItem.title = "Home"
        viewController.tabBarItem.image = UIImage(systemName: "homekit")
        return viewController
    }()
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func start() {
        self.navigationController.setViewControllers([homeViewController], animated: false)
    }
    
    func presentNovaOcorrencia ( ){
        let viewModel = NewOccurrenceViewModel(coordinator: self)
        let viewController = NewOccurrenceController(viewModel: viewModel)
        let navigationNovaOcorrencia = UINavigationController(rootViewController: viewController)
        navigationController.present(navigationNovaOcorrencia, animated: true)
    }
    }
