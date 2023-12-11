//
//  AboutCoordinator.swift
//  app-notifica-ifb
//
//  Created by Guilherme Delfino on 14/12/23.
//

import Foundation
import UIKit

class AboutCoordinator: Coordinator {
    private let navigationController: UINavigationController
    
    lazy var sobreViewController: AboutViewController = {
        let viewController = AboutViewController()
        
        viewController.tabBarItem.title = "Sobre"
        viewController.tabBarItem.image = UIImage(systemName: "info.square")
        return viewController
    }()
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func start() {
        
    }
}
