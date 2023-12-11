//
//  HomeViewModel.swift
//  app-notifica-ifb
//
//  Created by Guilherme Delfino on 14/12/23.
//

import Foundation
import UIKit

class HomeViewModel {
    var coordinator: HomeCoordinator
    
    init(coordinator: HomeCoordinator) {
        self.coordinator = coordinator
    }
    
    func didTapAdd(){
        coordinator.presentNovaOcorrencia()
        
    }
}
