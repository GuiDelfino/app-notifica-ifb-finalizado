//
//  ViewDefault.swift
//  app-notifica-ifb
//
//  Created by Sarah Rodrigues on 14/12/23.
//

import Foundation
import UIKit

class ViewDefault: UIView {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.backgroundColor = .viewBackGroundColor
        setupVisualElements()
        
    }
    
    func setupVisualElements() {
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
}
