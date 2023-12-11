//
//  RegisterCoordinator.swift
//  app-notifica-ifb
//
//  Created by IFB-BIOTIC-07 on 11/12/23.
//

import Foundation
import UIKit

class RegisterCoordinator: Coordinator {
    

    var navigationController: UINavigationController
    

    init (navigationController: UINavigationController ) {
            self.navigationController = navigationController
     
        }

      func start() {
        let viewController = RegisterViewController()
            self.navigationController.pushViewController(viewController, animated: true)
          
          
          viewController.onLoginTap = {
              self.gotoLogin()
          }

    }
    

    func  gotoLogin() {
       let coordinator = LoginCoordinator(navigationController: navigationController)
        coordinator.start()
    }
}
