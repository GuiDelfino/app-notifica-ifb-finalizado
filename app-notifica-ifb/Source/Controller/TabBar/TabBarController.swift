//
//  TabBarController.swift
//  app-notifica-ifb
//
//  Created by Guilherme Delfino on 14/12/23.
//

import Foundation
import UIKit

class TabBarController: UITabBarController {
    
    override func setViewControllers(_ viewControllers: [UIViewController]?, animated: Bool) {
        super.setViewControllers(viewControllers, animated: true)
        
        self.tabBar.tintColor = .buttonBackGroundColor
        self.tabBar.isTranslucent = true
        UITabBar.appearance().barTintColor = .viewBackGroundColor
        
    }
}
