//
//  AboutViewController.swift
//  app-notifica-ifb
//
//  Created by Guilherme Delfino on 14/12/23.
//

import Foundation
import UIKit

class AboutViewController: ViewControllerDefault {
    
    //MARK: -  Clouseres
    
    //cria uma variável que é do
    
    lazy var sobreView: AboutView = {
        let sobreView = AboutView()
        
        
        return sobreView
    }()
    
    override func loadView(){
        self.view = sobreView
    }
    
    // é executado quando está carregando
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Sobre"
    }
}
