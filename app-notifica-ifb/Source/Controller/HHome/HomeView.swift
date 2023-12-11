//
//  HomeView.swift
//  app-notifica-ifb
//
//  Created by Guilherme Delfino on 14/12/23.
//

import Foundation
import UIKit

class HomeView: ViewDefault {

    var viewModel: HomeViewModel
    
    init(viewModel: HomeViewModel){
        self.viewModel = viewModel
        super.init(frame: .zero)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
   override  func setupVisualElements() {

    }
    
}
