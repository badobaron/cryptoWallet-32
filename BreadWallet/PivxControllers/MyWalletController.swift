//
//  MyWalletController.swift
//  BreadWallet
//
//  Created by German Mendoza on 9/26/17.
//  Copyright © 2017 Aaron Voisine. All rights reserved.
//

import UIKit

class MyWalletController: BaseController {

    override func setup(){
    }
    
    override func setupNavigationBar() {
        navigationItem.title = "My wallet"
        
        let menuButton = UIBarButtonItem(image: UIImage(named:"icDrawer"), style: .plain, target: self, action: #selector(tappedMenuButton))
        
        let qrButton = UIBarButtonItem(image: UIImage(named:"icQrCodeWhite"), style: .plain, target: self, action: #selector(tappedQrButton))
        
        let scanButton = UIBarButtonItem(image: UIImage(named:"icScan"), style: .plain, target: self, action: #selector(tappedScanButton))
        
        navigationItem.hidesBackButton = true
        navigationItem.leftBarButtonItem = menuButton
        navigationItem.rightBarButtonItems = [scanButton, qrButton]
        
    }
    
    func tappedMenuButton(){
        self.slideMenuController()?.openLeft()
    }
    
    func tappedQrButton(){
    }
    
    func tappedScanButton(){
    }

}
