//
//  ChooseImage.swift
//  app-notifica-ifb
//
//  Created by Guilherme Delfino on 14/12/23.
//

import Foundation
import UIKit

class ChooseImage: NSObject, UIImagePickerControllerDelegate, UINavigationControllerDelegate {
    
    
    var selecionador = UIImagePickerController()
    var alerta = UIAlertController(title: "Escolha uma opção", message: nil, preferredStyle: .actionSheet)
    var viewController: UIViewController?
    var retornoSelecionador : ((UIImage) -> ())?
    
    func selecionadorImagem(_ viewController: UIViewController, _ retorno: @escaping ((UIImage) -> ())) {
        
        retornoSelecionador = retorno
        self.viewController = viewController
    
        let camera = UIAlertAction(title: "Camera", style: .default){
            UIAlertAction in
            self.abrirCamera()
        }
        let galeria = UIAlertAction(title: "Galeria", style: .default){
            UIAlertAction in
            self.abrirGaleria()
        }
        
        let cancelar = UIAlertAction(title: "Cancelar", style: .cancel){
            UIAlertAction in
        }
        
        selecionador.delegate = self
        
        
        // Adiciona ações ao alerta
        alerta.addAction(camera)
        alerta.addAction(galeria)
        alerta.addAction(cancelar)
        
        
        alerta.popoverPresentationController?.sourceView = self.viewController!.view
        viewController.present(alerta, animated: true, completion: nil)
    }
    
    
  
    func abrirCamera(){
 
        alerta.dismiss(animated: true, completion: nil)
        
        
        if(UIImagePickerController .isSourceTypeAvailable(.camera)){
            selecionador.sourceType = .camera
            //Vai para a tela da câmera
            self.viewController?.present(selecionador, animated: true, completion: nil)
        } else {
            let alerta = UIAlertController(title: "Alerta", message: "Você não tem câmera", preferredStyle: .actionSheet)
            let cancelar = UIAlertAction(title: "Cancelar", style: .cancel){
                UIAlertAction in
            }
            alerta.addAction(cancelar)
            self.viewController?.present(alerta, animated: true, completion: nil)
        }
    }
    
    
    func abrirGaleria(){
        alerta.dismiss(animated: true, completion: nil)
        
        selecionador.sourceType = .photoLibrary
        
        self.viewController?.present(selecionador, animated: true, completion: nil)
    }
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        
        picker.dismiss(animated: true, completion: nil)
        
        guard let image = info[.originalImage] as? UIImage else {
            fatalError("Esperava-se uma imagem, mas foi dado o seguinte: \(info)")
        }
        
        retornoSelecionador?(image)
    }
}
