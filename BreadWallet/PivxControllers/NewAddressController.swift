//
//  NewAddressController.swift
//  BreadWallet
//
//  Created by German Mendoza on 9/26/17.
//  Copyright © 2017 Aaron Voisine. All rights reserved.
//

import UIKit

class NewAddressController: BaseController {

    @IBOutlet weak var addressTextField: UITextField!
    @IBOutlet weak var nameTextField: UITextField!
    
    override func setup(){
    
    }
    
    override func setupNavigationBar() {
        super.setupNavigationBar()
        navigationItem.title = "New Address Label"
        let saveButton = UIBarButtonItem(title: "Save", style: .done, target: self, action: #selector(tappedSaveButton))
        navigationItem.rightBarButtonItem = saveButton
    }
    
    func tappedSaveButton(){
    
    }

}
