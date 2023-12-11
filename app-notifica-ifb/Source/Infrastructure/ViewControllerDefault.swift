//
//  ViewControllerDefault.swift
//  app-notifica-ifb
//
//  Created by Sarah Rodrigues on 14/12/23.
//

import Foundation
import UIKit

class ViewControllerDefault: ViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
      
        self.navigationController?.navigationBar.prefersLargeTitles = true
        self.navigationItem.setHidesBackButton(true, animated: false)
        let tap: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(self.hideKeyboardByTapInOutSide))
        self.view.addGestureRecognizer(tap)
    }
    
    @objc func hideKeyboardByTapInOutSide() {
        self.view.endEditing(true)
    }
}
