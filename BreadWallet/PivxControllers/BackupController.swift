//
//  BackupController.swift
//  BreadWallet
//
//  Created by German Mendoza on 9/26/17.
//  Copyright © 2017 Aaron Voisine. All rights reserved.
//

import UIKit

class BackupController: BaseController {

    @IBOutlet weak var repeatPasswordTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var backupButton: UIButton!
    @IBOutlet weak var containerView: UIView!
    
    
    override func setup(){
        containerView.border(cornerRadius: 5, color: K.color.gray_r207g208b209)
        backupButton.border(cornerRadius: 5, color: K.color.purple_r85g71b108)
    }
    
    override func setupNavigationBar() {
        super.setupNavigationBar()
        navigationItem.title = "Backup Wallet"
    }

    @IBAction func tappedBackupButton(_ sender: Any) {
        
    }
    
    @IBAction func tappedShowPasswordButton(_ sender: Any) {
        
    }
}
