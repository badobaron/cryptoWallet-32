//
//  AddressListController.swift
//  BreadWallet
//
//  Created by German Mendoza on 9/27/17.
//  Copyright © 2017 Aaron Voisine. All rights reserved.
//

import UIKit

class AddressListController: BaseController {

    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var addAddressButton: UIButton!
    
    
    override func setup(){
        
        addAddressButton.border(cornerRadius: 5, color: K.color.purple_r85g71b108)
    }
    
    override func setupNavigationBar(){
        super.setupNavigationBar()
        navigationItem.title = "Address list"
        
    }

}
