//
//  TextFieldDefault.swift
//  app-notifica-ifb
//
//  Created by IFB-BIOTIC-07 on 11/12/23.
//

import Foundation
import UIKit

class TextFieldDefault: UITextField{
    
    init(placeholder: String) {
          super.init(frame: .zero)
          
        initDefault(placeholder: placeholder, keyBordType: .default, returnKeyType: .default)
        
      }
    
    init(placeholder: String, keyBordType: UIKeyboardType, returnKeyType: UIReturnKeyType ) {
          super.init(frame: .zero)
          
        initDefault(placeholder: placeholder, keyBordType: keyBordType, returnKeyType: returnKeyType)
        
      }
    
  
    private func initDefault(placeholder: String, keyBordType: UIKeyboardType, returnKeyType: UIReturnKeyType) {
        self.backgroundColor = .textFieldBackGroundColor
        self.placeholder = placeholder
        self.keyboardType = keyBordType
        self.returnKeyType = returnKeyType
        self.translatesAutoresizingMaskIntoConstraints = false
       }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
