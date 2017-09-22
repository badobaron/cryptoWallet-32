//
//  LoginController.swift
//  BreadWallet
//
//  Created by German Mendoza on 9/22/17.
//  Copyright © 2017 Aaron Voisine. All rights reserved.
//

import UIKit

class LoginController: BaseController {

    @IBOutlet weak var createWalletButton: UIButton!
    override func setup() {
        createWalletButton.border(cornerRadius: 5)
    }
    
    override func setupNavigationBar() {
        super.setupNavigationBar()
        navigationController?.setNavigationBarHidden(true, animated: true)
    }
    
    @IBAction func tappedCreateWalletButton(_ sender: Any) {
        let controller = SetupController(nibName:"Setup", bundle:nil)
        navigationController?.show(controller, sender: nil)
    }
    
    @IBAction func tappedRestoreWalletButton(_ sender: Any) {
        let controller = RestoreController(nibName: "Restore", bundle: nil)
        navigationController?.show(controller, sender: nil)
    }
    
}
