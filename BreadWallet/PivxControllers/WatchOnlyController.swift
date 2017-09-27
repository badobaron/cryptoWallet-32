//
//  WatchOnlyController.swift
//  BreadWallet
//
//  Created by German Mendoza on 9/26/17.
//  Copyright © 2017 Aaron Voisine. All rights reserved.
//

import UIKit

class WatchOnlyController: BaseController {

    @IBOutlet weak var importButton: UIButton!
    @IBOutlet weak var xpubTextField: UITextField!
    @IBOutlet weak var containerView: UIView!

    override func setup(){
        importButton.border(cornerRadius: 5, color: K.color.purple_r85g71b108)
        containerView.border(cornerRadius: 5, color: K.color.gray_r207g208b209)
    }
    
    override func setupNavigationBar() {
        super.setupNavigationBar()
        navigationItem.title = "Watch only"
    }

    @IBAction func tappedImportButton(_ sender: Any) {
    }
}
