//
//  LoginView.swift
//  app-notifica-ifb
//
//  Created by IFB-BIOTIC-07 on 11/12/23.
//

import Foundation
import UIKit

class LoginView: UIView {
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.backgroundColor = .viewBackGroundColor
        setupVisualElements()
        
    }


var onRegisterTap: (() -> Void)?


var imageLogin = ImageDefault(image: "ImageLogin")
var imageLabel = LabelDefault(text: "Registre e gerencie as ocorrências do seu IF", font: UIFont.systemFont(ofSize: 17, weight: .regular))
var emailTextField = TextFieldDefault (placeholder: "E-mail")
var senhaTextField = TextFieldDefault (placeholder: "Senha")
var buttonLogar = ButtonDefault(botao: "LOGAR")
var buttonRegistrar = ButtonDefault(botao: "REGISTRAR")
    

func setupVisualElements() {
    self.addSubview(imageLogin)
    self.addSubview(imageLabel)
    self.addSubview(emailTextField)
    self.addSubview(senhaTextField)
    self.addSubview(buttonLogar)
    self.addSubview(buttonRegistrar)
    
    buttonRegistrar.addTarget(self, action: #selector(registerTap), for: .touchUpInside)
    
    NSLayoutConstraint.activate([
    
        imageLogin.widthAnchor.constraint(equalToConstant: 274.99),
        imageLogin.heightAnchor.constraint(equalToConstant: 82.64),
        imageLogin.topAnchor.constraint(equalTo: self.topAnchor, constant: 228),
        imageLogin.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 57),
        imageLogin.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -57),
        
        imageLabel.widthAnchor.constraint(equalToConstant: 100),
        imageLabel.topAnchor.constraint(equalTo: imageLogin.bottomAnchor, constant: 5),
        imageLabel.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 25),
        imageLabel.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -10),
        
        emailTextField.widthAnchor.constraint(equalToConstant: 374),
        emailTextField.heightAnchor.constraint(equalToConstant: 60),
        emailTextField.topAnchor.constraint(equalTo: imageLabel.bottomAnchor, constant: 70),
        emailTextField.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 16),
        emailTextField.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -16),
        
        senhaTextField.widthAnchor.constraint(equalToConstant: 374),
        senhaTextField.heightAnchor.constraint(equalToConstant: 60),
        senhaTextField.topAnchor.constraint(equalTo: emailTextField.bottomAnchor, constant: 23),
        senhaTextField.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 16),
        senhaTextField.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -16),
        
        buttonLogar.widthAnchor.constraint(equalToConstant: 374),
        buttonLogar.heightAnchor.constraint(equalToConstant: 60),
        buttonLogar.topAnchor.constraint(equalTo: senhaTextField.bottomAnchor, constant: 25),
        buttonLogar.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 16),
        buttonLogar.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -16),
        
        buttonRegistrar.widthAnchor.constraint(equalToConstant: 374),
        buttonRegistrar.heightAnchor.constraint(equalToConstant: 60),
        buttonRegistrar.topAnchor.constraint(equalTo: buttonLogar.bottomAnchor, constant: 25),
        buttonRegistrar.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 16),
        buttonRegistrar.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -16),

    
    ])
}
required init?(coder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
}

@objc
private func registerTap(){
    onRegisterTap?()
}
}
