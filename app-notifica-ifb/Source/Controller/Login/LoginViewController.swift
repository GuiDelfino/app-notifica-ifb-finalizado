//
//  LoginViewController.swift
//  app-notifica-ifb
//
//  Created by IFB-BIOTIC-07 on 11/12/23.
//

import Foundation
import UIKit

class LoginViewController: UIViewController {
    

    var onRegisterTap: (() -> Void)?
    var onLoginTap: (() -> Void)?
    

    
    lazy var loginView: LoginView = {
        let loginView = LoginView()
        loginView.onRegisterTap = {
            self.onRegisterTap?()
        }
        loginView.onLoginTap = {
            self.onLoginTap?()
        }
        
        return loginView
    }()
    
       override func loadView(){
           self.view = loginView
       }
       

       override func viewDidLoad() {
           super.viewDidLoad()
        self.title = "Logar"
           
           self.navigationController?.navigationBar.prefersLargeTitles=true

       }

}
