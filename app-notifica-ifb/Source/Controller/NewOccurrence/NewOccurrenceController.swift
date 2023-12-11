//
//  NewOccurrenceController.swift
//  app-notifica-ifb
//
//  Created by Guilherme Delfino on 14/12/23.
//

import Foundation
import UIKit

class NewOccurrenceController: ViewControllerDefault {
    
    let viewModel: NewOccurrenceViewModel
    init(viewModel: NewOccurrenceViewModel) {
        self.viewModel = viewModel
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    lazy var novaOcorrenciaView: NewOccurrenceView = {
        let novaOcorrenciaView = NewOccurrenceView(viewModel: viewModel)
        
        novaOcorrenciaView.onCameraTap = {
            ChooseImage().selecionadorImagem(self) { imagem in novaOcorrenciaView.setImage(image: imagem)
            }
        }
        
        return novaOcorrenciaView
    }()
    
    override func loadView(){
        self.view = novaOcorrenciaView
    }
    
   
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Nova Ocorrência"
    }
}
