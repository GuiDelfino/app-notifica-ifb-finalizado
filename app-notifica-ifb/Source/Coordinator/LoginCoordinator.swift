//
//  LoginCoordinator.swift
//  app-notifica-ifb
//
//  Created by IFB-BIOTIC-07 on 11/12/23.
//

import Foundation
import UIKit

class LoginCoordinator: Coordinator {
    
    var navigationController: UINavigationController
    

    init (navigationController: UINavigationController ) {
            self.navigationController = navigationController
     
        }

      func start() {

     let viewController = LoginViewController()
          self.navigationController.pushViewController(viewController, animated: true)
          
          
          viewController.onRegisterTap = {
              self.gotoRegister()
          }
          
          viewController.onLoginTap = {
              self.gotoLogin()
          }
    }
    

    func  gotoRegister() {
       let coordinator = RegisterCoordinator(navigationController: navigationController)
        coordinator.start()
    }
    func  gotoLogin() {
       let coordinator = TabBarCoordinator(navigationController: navigationController)
        coordinator.start()
    }
}
