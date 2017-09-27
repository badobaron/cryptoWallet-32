//
//  BaseController.swift
//  BreadWallet
//
//  Created by German Mendoza on 9/22/17.
//  Copyright © 2017 Aaron Voisine. All rights reserved.
//

import UIKit

class BaseController: UIViewController {
    
    let cellIdentifier = "cellIdentifier"
    let emptyIdentifier = "emptyIdentifier"
    var state:TableState = .success

    override func viewDidLoad() {
        super.viewDidLoad()
        setup()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
        setupNavigationBar()
    }
    
    func setup(){}

    func setupNavigationBar(){
        navigationItem.hidesBackButton = true
        let backButton = UIBarButtonItem(image: UIImage(named:"icBack"), style: .plain, target: self, action: #selector(tappedBackButton))
        navigationItem.leftBarButtonItem = backButton
    }
    
    func refresh(){}
    
    func addMenuButton(){
        let menuButton = UIBarButtonItem(image: UIImage(named:"icDrawer"), style: .plain, target: self, action: #selector(tappedMenuButton))
        navigationItem.hidesBackButton = true
        navigationItem.leftBarButtonItem = menuButton
        
    }
    
    func tappedMenuButton(){
        self.slideMenuController()?.openLeft()
    }
    
    func tappedBackButton(){
        let _ = navigationController?.popViewController(animated: true)
    }
}
