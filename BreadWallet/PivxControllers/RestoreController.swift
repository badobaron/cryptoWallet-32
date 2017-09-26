//
//  RestoreController.swift
//  BreadWallet
//
//  Created by German Mendoza on 9/22/17.
//  Copyright © 2017 Aaron Voisine. All rights reserved.
//

import UIKit

class RestoreController: BaseController {

    
    @IBOutlet weak var containerView: UIView!
    
    @IBOutlet weak var selectBackupButton: UIButton!
    @IBOutlet weak var restoreButton: UIButton!
    @IBOutlet weak var passwordTextField: UITextField!
    
    override func setup() {
        restoreButton.border(cornerRadius: 5, color: K.color.purple_r85g71b108)
        containerView.border(cornerRadius: 5, color: K.color.gray_r207g208b209)
    }
    
    override func setupNavigationBar() {
        super.setupNavigationBar()
        navigationItem.title = "Restore Wallet"
        navigationController?.setNavigationBarHidden(false, animated: true)
    }

    @IBAction func tappedShowPasswordButton(_ sender: Any) {
        
    }
    
    @IBAction func tappedRestoreButton(_ sender: Any) {
        
    }
    
}
